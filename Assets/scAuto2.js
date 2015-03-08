#pragma strict

public var piloteAutomatique:boolean;
public var ConduiteAndroid:boolean;
public var CameraHaut:boolean;
public var gazaufond:boolean;



public var movement:Vector3;
public var movementrelatif:Vector3;
private var accel :Vector3;
public var throttle :float;
private var deadZone:float = 0.001;
private var myRight :Vector3;
private var velo:Vector3;
private var flatVelo:Vector3;
private var relativeVelocity:Vector3;
private var dir: Vector3;
private var flatDir:Vector3;
private var carUp:Vector3;
private var carTransform:Transform;
private var carRigidbody:Rigidbody;
private var engineForce:Vector3;

private var turnVec:Vector3;
private var imp:Vector3;
private var rev:float;
private var actualTurn:float;
private var carMass:float;
private var wheelTransform:Transform[] = new Transform[4];

public var actualGrip:float;
public var horizontal:float;
private var maxSpeedToTurn:float=0.2;


public var frontLeftWheel:Transform;
public var frontRightWheel:Transform;
public var rearLeftWheel:Transform;
public var rearRightWheel:Transform;

public var LFWheelTransform:Transform;
public var RFWheelTransform:Transform;

public var power:float=300;
public var maxSpeed:float=50;
public var carGrip:float=70;
public var turnSpeed:float=70;



public var oldslideSpeed:float;
public var slideSpeed:float;
public var mySpeed:float;

private var carRight:Vector3;
private var carFwd:Vector3;
private var tempVEC:Vector3;

	private var rotationAmount : Vector3;
	
	
	
public var animAuto:Animator;



public var Objectif:GameObject;


public var MovementJoystick:CNAbstractController;


public var scCamera:GameObject;
public var cibleCam:GameObject;
public var CameraLook:GameObject;
public var cibleCamOriginal:Vector3;
public var scCameraOriginal:Vector3;


function Start () {
 Initialize();
}

function  Initialize()
{
	carTransform = transform;
	
	carRigidbody = rigidbody;
	
	carMass = rigidbody.mass;

	carFwd = Vector3.forward;
	carRight = Vector3.right;
	carUp = Vector3.up;
	
	cibleCamOriginal=cibleCam.transform.position;
	
	//scCameraOriginal=scCamera.transform.position;

	
	setUpWheels();
	
	carRigidbody.centerOfMass = Vector3(0,-0.7, 0.35);
	
	if(piloteAutomatique)
	{
		if(!ConduiteAndroid)
		{
			Destroy (GameObject.Find("CNControlCamera"));
		}
	}
	
	if(CameraHaut)
	{
		CameraLook.camera.enabled= true;
		scCamera.camera.enabled= false;
	}
	
}








function LateUpdate () {
	rotateVisualWheels();
	
	engineSound();
}




	
function setUpWheels()
{
	if((null == frontLeftWheel ||null == frontRightWheel ||null == rearLeftWheel ||null == rearRightWheel))
	{
		Debug.Log('Tes roues sont pas setté!');
		Debug.Break();
	}
	
	else{
		wheelTransform[0] = frontLeftWheel;
		wheelTransform[1] = frontRightWheel;
		wheelTransform[2] = rearLeftWheel;
		wheelTransform[3] = rearRightWheel;
	}
}


function rotateVisualWheels()
{
	LFWheelTransform.localEulerAngles.y = horizontal * 30;
	RFWheelTransform.localEulerAngles.y = horizontal * 30;
	
	rotationAmount = carUp * (relativeVelocity.z * 1.6 * Time.deltaTime * Mathf.Rad2Deg);
	
		wheelTransform[0].Rotate(rotationAmount);
		wheelTransform[1].Rotate(rotationAmount);
		wheelTransform[2].Rotate(rotationAmount);
		wheelTransform[3].Rotate(rotationAmount);
}

private var deviceAccelerometerSensitivity : float = 2;

function checkInput()
{
	if(Application.platform == RuntimePlatform.IPhonePlayer || (Application.platform == RuntimePlatform.Android))
	{
		accel = Input.acceleration * deviceAccelerometerSensitivity;
		
		if(accel.x > deadZone || accel.x < -deadZone){
			horizontal = accel.x;
		
		}
		else{
		horizontal= 0;
		}
		throttle = 0;
		
		for (var touch : Touch in Input.touches){
			if(touch.position.x > Screen.width-Screen.width/3 && touch.position.y < Screen.height/3)
			{
				throttle = 1;
			}
			
			else if(touch.position.x < Screen.width/3 && touch.position.y < Screen.height/3)
			{
				throttle = -1;
			}
		
		}
	}
	else if(ConduiteAndroid)
		{
			horizontal=MovementJoystick.GetAxis("Horizontal");
			throttle=MovementJoystick.GetAxis("Vertical");
		}
	
	else if (Application.platform == RuntimePlatform.WindowsEditor || Application.platform == RuntimePlatform.WindowsWebPlayer)
	{
		horizontal =Input.GetAxis("Horizontal");
		throttle = Input.GetAxis("Vertical");
	}
	
	movement = new Vector3(horizontal,0f,throttle);
	
	if(CameraHaut)
    {
    	CommonMovementMethod(movement);
	}
	
	if(gazaufond)
	{
		throttle=1;
		if(Mathf.Abs(horizontal)>0.5)
		{
			throttle=throttle-(Mathf.Abs(horizontal)/2);
		}
	}
}



function CommonMovementMethod(movement:Vector3)
{
	movement = CameraLook.transform.TransformDirection(movement);
    movement.y = 0f;
    movement.Normalize();			
	movementrelatif = transform.InverseTransformDirection(movement);
    horizontal =movementrelatif.x;
	throttle=movementrelatif.z;
	throttle=movementrelatif.magnitude*Mathf.Sign(movementrelatif.z);
	
	if(throttle<0)
	{
		throttle=throttle/3;
	}
	//throttle=movementrelatif.magnitude;
}




function carPhysicsUpdate()
{
	myRight = carTransform.right;
	velo = carRigidbody.velocity;
	tempVEC = Vector3(velo.x,0,velo.z);
	flatVelo = tempVEC;
	dir = transform.TransformDirection(carFwd);
	tempVEC = Vector3(dir.x, 0, dir.z);
	flatDir = Vector3.Normalize(tempVEC);
	relativeVelocity = carTransform.InverseTransformDirection(flatVelo);
	oldslideSpeed=slideSpeed;
	slideSpeed = Vector3.Dot(myRight, flatVelo);
	
	mySpeed = flatVelo.magnitude;
	rev = Mathf.Sign(Vector3.Dot(flatVelo,flatDir));
	engineForce = (flatDir * (power * throttle) * carMass);
	actualTurn = horizontal;
	
	if(rev < 0.0f)
	{
		actualTurn =-actualTurn;
		engineForce = engineForce/3;
	}
	turnVec=(((carUp * turnSpeed) * actualTurn)*carMass)*80;
	actualGrip = Mathf.Lerp(100, carGrip, mySpeed * 0.02);

	slideSpeed=slideSpeed/5;
	imp = myRight *(-slideSpeed * carMass * actualGrip);
}



function engineSound()
{
	/*
	
	audio.pitch = 0.3 + mySpeed *0.025;

	if(mySpeed > 30)
	{
		audio.pitch = 0.25 + mySpeed *0.015;
	}
	
	if(mySpeed > 40)
	{
		audio.pitch = 0.20 + mySpeed *0.013;
	}
	
		if(mySpeed > 49)
	{
		audio.pitch = 0.15 + mySpeed *0.0110;
	}
	
			
	if(audio.pitch > 2.0)
	{
		audio.pitch = 2.0
	}
	
	*/
}

function mouvementCamera()
{	
	scCamera.transform.LookAt(cibleCam.transform.position);
	CameraLook.transform.LookAt(cibleCam.transform.position);
	CameraLook.transform.position=cibleCam.transform.position;
	CameraLook.transform.position.x+=10;
	CameraLook.transform.position.y+=10;
	//scCamera.transform.LookAt(cibleCam.transform.position);
	scCamera.transform.localPosition.x = Mathf.Lerp(oldslideSpeed, slideSpeed/50, Time.time*3);
}

function animationAuto()
{
	animAuto.SetFloat("vibrations", engineForce.magnitude , 0.2, 0.1);
	animAuto.SetFloat("virage", (turnVec.y/240)*mySpeed/100 , 0.2, 0.1);
}


function FixedUpdate()
{
		//carRigidbody.AddForce(engineForce*Time.deltaTime);
		
		
		//fixed update
		
				carPhysicsUpdate();
		
		
		
		if(piloteAutomatique)
		{
			autopilot();
		}
		
		else{
			checkInput();
			mouvementCamera();
		}
		
		
		
	
	
	animationAuto();


	if(mySpeed < maxSpeed)
	{
		carRigidbody.AddForce(engineForce*Time.deltaTime);
	}
	
	if(mySpeed > maxSpeedToTurn)
	{
		carRigidbody.AddTorque(turnVec*Time.deltaTime);
	}
	else if(mySpeed < maxSpeedToTurn)
	{
		return;
	}
 

	carRigidbody.AddForce(imp * Time.deltaTime);
	
	carRigidbody.AddForce(Vector3.right*3*Time.deltaTime);
}


function autopilot()
{
		horizontal= 0;
       throttle=1;


	var relativePoint = transform.InverseTransformPoint(Objectif.transform.position);
	print(relativePoint.x);

    if (relativePoint.x > 0.2)
	{
		horizontal= 0.4;
		throttle=0.4;
	}

    else if (relativePoint.x < -0.2)
	{
		horizontal= -0.4;
		throttle=0.4;
	}
	else if (relativePoint.z < 2)
	{
		horizontal= horizontal*2;
		throttle=1;
	}
	
    else
        print ("Object is directly ahead");
        
}



