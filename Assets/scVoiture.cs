using UnityEngine;
using System.Collections;

public class scVoiture : scVehicule
{

	public Transform frontLeftWheel;
	public Transform frontRightWheel;
	public Transform rearLeftWheel;
	public Transform rearRightWheel;

	public Transform LFWheelTransform;
	public Transform RFWheelTransform;
	public Transform[] wheelTransform = new Transform[4];


	
	public float oldslideSpeed;
	public float slideSpeed;
	public float mySpeed;
	
	public Vector3 carRight;
	public Vector3 carFwd;
	
	public Vector3 rotationAmount;

	public float carGrip=70;
	public float turnSpeed=70;


	void  StartVehicule ()
	{
	
		//carTransform = transform;
	
		//carRigidbody = rigidbody;
	

		carFwd = Vector3.forward;
		carRight = Vector3.right;
		carUp = Vector3.up;
	
		setUpWheels ();
		carRigidbody.centerOfMass = new Vector3 (0, -0.7f, 0.35f);	
	}

	

//returns whether we are on the ground or not
	//also: bouncing on enemies, keeping player on moving platforms and slope checking
	private bool IsGrounded ()
	{
		//get distance to ground, from centre of collider (where floorcheckers should be)
		float dist = collider.bounds.extents.y;
		//check whats at players feet, at each floorcheckers position
		foreach (Transform check in floorCheckers) {
			RaycastHit hit;
			if (Physics.Raycast (check.position, Vector3.down, out hit, dist + 0.05f)) {
				if (!hit.transform.collider.isTrigger) {
					//slope control
					slope = Vector3.Angle (hit.normal, Vector3.up);
					//slide down slopes
					if (slope > slopeLimit && hit.transform.tag != "Pushable") {
						Vector3 slide = new Vector3 (0f, -slideAmount, 0f);
						rigidbody.AddForce (slide, ForceMode.Force);
					}
					//enemy bouncing
					/*if (hit.transform.tag == "Enemy" && rigidbody.velocity.y < 0)
					{
						enemyAI = hit.transform.GetComponent<EnemyAI>();
						enemyAI.BouncedOn();
						onEnemyBounce ++;
						dealDamage.Attack(hit.transform.gameObject, 1, 0f, 0f);
					}
					else
						onEnemyBounce = 0;*/
					//moving platforms
					
					if (hit.transform.tag == "MovingPlatform" || hit.transform.tag == "Pushable") {
						movingObjSpeed = hit.transform.rigidbody.velocity;
						movingObjSpeed.y = 0f;
						//9.5f is a magic number, if youre not moving properly on platforms, experiment with this number
						rigidbody.AddForce (movingObjSpeed * movingPlatformFriction * Time.fixedDeltaTime, ForceMode.VelocityChange);
					} else {
						movingObjSpeed = Vector3.zero;
					}
					//yes our feet are on something
					return true;
				}
			}
		}
		movingObjSpeed = Vector3.zero;
		//no none of the floorchecks hit anything, we must be in the air (or water)
		return false;
	}





	void  setUpWheels ()
	{
		if ((null == frontLeftWheel || null == frontRightWheel || null == rearLeftWheel || null == rearRightWheel)) {
			Debug.Log ("Tes roues sont pas setté!");
			Debug.Break ();
		} else {
			wheelTransform [0] = frontLeftWheel;
			wheelTransform [1] = frontRightWheel;
			wheelTransform [2] = rearLeftWheel;
			wheelTransform [3] = rearRightWheel;
		}
	}


	void  rotateVisualWheels ()
	{
		
		/*	Vector3 _tmpLF = LFWheelTransform; // getter
		Vector3 _tmpRF = RFWheelTransform; // getter
		
		
	_tmpLF.localEulerAngles.y = horizontal * 30;
	_tmpRF.localEulerAngles.y = horizontal * 30;
		
	LFWheelTransform.localEulerAngles = _tmpLF;
	RFWheelTransform.localEulerAngles = _tmpRF;	
	
	*/
		/*rotationAmount = carUp * (relativeVelocity.z * 1.6f * Time.deltaTime * Mathf.Rad2Deg);
	
		wheelTransform [0].Rotate (rotationAmount);
		wheelTransform [1].Rotate (rotationAmount);
		wheelTransform [2].Rotate (rotationAmount);
		wheelTransform [3].Rotate (rotationAmount);*/
	}





	void  carPhysicsUpdate ()
	{



		//mySpeed = carRigidbody.magnitude;

		 /*

		
		tempVEC = new Vector3 (velo.x, 0, velo.z);
		flatVelo = tempVEC;
		flatVelo.Normalize ();
		dir = transform.TransformDirection (carFwd);
		tempVEC = new Vector3 (dir.x, 0, dir.z);
	
		flatDir = tempVEC;
		flatDir.Normalize ();

		relativeVelocity = this.transform.InverseTransformDirection (flatVelo);
		oldslideSpeed = slideSpeed;
		slideSpeed = Vector3.Dot (myRight, flatVelo);
	
		rev = Mathf.Sign (Vector3.Dot (flatVelo, flatDir));
		engineForce = (flatDir * (engineForce.magnitude * throttle) * carMass);
		actualTurn = horizontal;
	
		if (rev < 0.0f) {
			actualTurn = -actualTurn;
			engineForce = engineForce / 3;
		}
		
		actualGrip = Mathf.Lerp (100, carGrip, mySpeed * 0.02f);

		*/




	}



	void  engineSound ()
	{
		/*
	
	audio.pitch = 0.3f + mySpeed *0.025f;

	if(mySpeed > 30)
	{
		audio.pitch = 0.25f + mySpeed *0.015f;
	}
	
	if(mySpeed > 40)
	{
		audio.pitch = 0.20f + mySpeed *0.013f;
	}
	
		if(mySpeed > 49)
	{
		audio.pitch = 0.15f + mySpeed *0.0110f;
	}
	
			
	if(audio.pitch > 2.0f)
	{
		audio.pitch = 2.0f
	}
	
	*/
	}



	public void  animationAuto ()
	{
		animAuto.SetFloat ("vibrations", powerMoteur, 0.2f, 0.1f);
		animAuto.SetFloat ("virage", (movementrelatif.x / 240) * mySpeed / 100, 0.2f, 0.1f);
	}


	public override void  FixedUpdateVehicule ()
	{




		
		//animationAuto ();
		
		/*if(piloteAutomatique)
		{
			autopilot();
		}*/

		grounded = IsGrounded ();
		float ralentir=1f;
		if(movementrelatif.y<-0.2)
		{
			movementrelatif.x *= 10;
			ralentir = 0.5f;
		}

			
		//this.rigidbody.AddTorque(carUp*500000000000000000 * Time.deltaTime);

		
		rigidbody.AddRelativeTorque((Vector3.up * powerSteering)*50*movementrelatif.x);

		rigidbody.AddRelativeForce(Vector3.forward *  Time.deltaTime* powerMoteur*ralentir);



		animationAuto ();


		if (mySpeed < maxSpeed) {
			if (grounded) {
				rigidbody.AddRelativeForce(Vector3.forward *  Time.deltaTime* powerMoteur*carMass);
			}
		}
		//carRigidbody.AddForce(Vector3.right*3*Time.deltaTime);
	}



}