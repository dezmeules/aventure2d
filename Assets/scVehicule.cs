using UnityEngine;
using System.Collections;

public class scVehicule : MonoBehaviour
{


	public bool  piloteAutomatique;

	public GameObject missile;

	public bool  ConduiteAndroid;
	public bool  CameraHaut;
	public bool  gazaufond;
	public EnemyAI enemyAI;
	public float h;
	public float v;
	public float trottle = 0.2f;							//how fast coin accelerates toward player when they're near


	public Collider hero;
	public float movingPlatformFriction = 7.7f;				//you'll need to tweak this to get the player to stay on moving platforms properly
	public Vector3 direction, moveDirection, screenMovementForward, screenMovementRight, movingObjSpeed;
	public float slope;
	public float slopeLimit = 40, slideAmount = 35;			//maximum angle of slopes you can walk on, how fast to slide down slopes you can't

	public bool grounded;
	public Transform[] floorCheckers;
	public float startSpeed = 3f;
	public float speedGain = 0.2f;
	public PlayerMove scPlayerMove;
	public float sautDepart = 50;
	public float speed = 2.0f;
	public bool collected;
	public bool avecPilote = false;
	public Transform player, mainCam, floorChecks;
	public TriggerParent triggerParent;	//this is a utility class, that lets us check if the player is close to the coins "bounds sphere trigger"

	public Transform siege;
	public float throttle;
	public Rigidbody carRigidbody;
	public Vector3 movement;
	public Vector3 movementrelatif;
	public float horizontal;
	public Vector3 carUp;

	/*

public Vector3 accel;
public float deadZone = 0.001f;
public Vector3 myRight;
public Vector3 velo;
public Vector3 flatVelo;
public Vector3 relativeVelocity;
public Vector3 dir;
public Vector3 flatDir;
public Transform carTransform;
public Vector3 engineForce;

	

public Vector3 turnVec;
public Vector3 imp;
public float rev;

	public float actualTurn;
//public Transform[] wheelTransform = new Transform[4];

public float actualGrip;
public float maxSpeedToTurn=0.2f;



*/

	public float carMass;
	public float maxSpeed = 50;
	public float powerMoteur = 25f;
	public float powerMoteurUp = 1f;
	public float powerWhelly = 2f;
	public float powerSteering = 5f;
	public Animator animAuto;
	public GameObject Objectif;
	public CNAbstractController MovementJoystick;
	public GameObject scCamera;
	public GameObject cibleCam;

	public void  Start ()
	{
		
		triggerParent = GetComponentInChildren<TriggerParent> ();
		carMass = this.rigidbody.mass;

		if (!triggerParent) {
			GameObject bounds = new GameObject ();
			bounds.name = "Bounds";
			bounds.AddComponent ("SphereCollider");
			bounds.GetComponent<SphereCollider> ().radius = 7f;
			bounds.GetComponent<SphereCollider> ().isTrigger = true;
			bounds.transform.parent = transform;
			bounds.transform.position = transform.position;
			bounds.AddComponent ("TriggerParent");
			triggerParent = GetComponentInChildren<TriggerParent> ();
			triggerParent.tagsToCheck = new string[1];
			triggerParent.tagsToCheck [0] = "Player";
			Debug.LogWarning ("No pickup radius 'bounds' trigger attached to coin: " + transform.name + ", one has been added automatically", bounds);
		}
		
		if (!floorChecks) {
			floorChecks = new GameObject ().transform;
			floorChecks.name = "FloorChecks";
			floorChecks.parent = transform;
			floorChecks.position = transform.position;
			GameObject check = new GameObject ();
			check.name = "Check1";
			check.transform.parent = floorChecks;
			check.transform.position = transform.position;
			Debug.LogWarning ("No 'floorChecks' assigned to PlayerMove script, so a single floorcheck has been created", floorChecks);
		}
		floorCheckers = new Transform[floorChecks.childCount];
		for (int i=0; i < floorCheckers.Length; i++)
			floorCheckers [i] = floorChecks.GetChild (i);
		
		StartVehicule ();
	
		player = GameObject.FindGameObjectWithTag ("Player").transform;

	
		carRigidbody.centerOfMass = new Vector3 (0, -0.7f, 0.35f);
	
		if (piloteAutomatique) {
			if (!ConduiteAndroid) {
				Destroy (GameObject.Find ("CNControlCamera"));
			}
		}
	}

	void StartVehicule ()
	{

	}

	void OnCollisionEnter (Collision collision)
	{
		foreach (ContactPoint contact in collision.contacts) {
			Debug.DrawRay (contact.point, contact.normal, Color.red);
		}
		if (collision.relativeVelocity.magnitude > 30) {
			print ("BANG");
			StartCoroutine (quitterVehicule ());
		}
	}

	public bool IsGrounded ()
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

	public float deviceAccelerometerSensitivity = 2;

	public void  checkInput ()
	{
		/*if(Application.platform == RuntimePlatform.IPhonePlayer || (Application.platform == RuntimePlatform.Android))
	{
		accel = Input.acceleration * deviceAccelerometerSensitivity;
		
		if(accel.x > deadZone || accel.x < -deadZone){
			horizontal = accel.x;
		
		}
		else{
		horizontal= 0;
		}
		throttle = 0;
		
		foreach(Touch touch in Input.touches){
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
	*/
		if (Application.platform == RuntimePlatform.WindowsEditor || Application.platform == RuntimePlatform.WindowsWebPlayer) {
			h = Input.GetAxis ("Horizontal");
			v = Input.GetAxis ("Vertical");
		}
	
		movement = new Vector3 (h, v, 0);
	
		if (CameraHaut) {
			CommonMovementMethod (movement);
		}
	
		if (gazaufond) {
			throttle = 1;
			/*if(Mathf.Abs(horizontal)>0.5f)
		{
			throttle=throttle-(Mathf.Abs(horizontal)/2);
		}*/
		}
	}

	public void  CommonMovementMethod (Vector3 movement)
	{


		movement = mainCam.transform.TransformDirection (movement);
		movement.y = 0f;
		movement.Normalize ();			
		movementrelatif = transform.InverseTransformDirection (movement);
		horizontal = movementrelatif.x;
		throttle = movementrelatif.z;
		throttle = movementrelatif.magnitude * Mathf.Sign (movementrelatif.z);
	
		if (throttle < 0) {
			throttle = throttle / 3;
		}
		throttle = movementrelatif.magnitude;
	}



	/*
public void  engineSound (){
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
	

}*/



	public virtual void FixedUpdateVehicule ()
	{
	}

	public void FixedUpdate ()
	{

		if (avecPilote) {
			FixedUpdateVehicule ();
		}
		/*if(piloteAutomatique)
		{
			autopilot();
		}*/
		
	
		
		if (triggerParent.collided)
			collected = true;
		

		if (scPlayerMove != null) {
			if (scPlayerMove.conduireAvion) {
				hero.transform.localPosition = new Vector3 (0, 0, 0);

				checkInput ();
				if (Input.GetButton ("Jump")) {
					StartCoroutine (quitterVehicule ());
				}

				if (Input.GetButton ("Grab")) {
					lancerMissile();
				}
			}
		}
	}

	public void lancerMissile()
	{
		Instantiate(missile,  transform.position, transform.rotation);
	}
	
	public IEnumerator quitterVehicule ()
	{
		if (avecPilote) {
			hero.rigidbody.isKinematic = false;
			hero.rigidbody.useGravity = true;
			hero.collider.enabled = true;
			hero.collider.isTrigger = false;
			print ("BYE auto");
			scPlayerMove = hero.GetComponent<PlayerMove> (); 
			scPlayerMove.conduireAvion = false;
			hero.transform.parent = null;
			hero.transform.eulerAngles = new Vector3 (0, 0, 0);
			scPlayerMove.Jump (Vector3.up * 10);
			
			
			mainCam = GameObject.FindGameObjectWithTag ("MainCamera").transform;
			
			
			yield return new WaitForSeconds (1);
			avecPilote = false;			
		}
	}

	public void OnTriggerEnter (Collider other)
	{
		if (!avecPilote) {
			if (other.tag == "Player") {
				hero = other;
				hero.rigidbody.isKinematic = true;
				hero.rigidbody.useGravity = false;
				other.collider.enabled = false;
				hero.collider.isTrigger = true;
				print ("LOL Voiture");
				scPlayerMove = other.GetComponent<PlayerMove> (); 
				scPlayerMove.conduireAvion = true;
				
				hero.transform.parent = siege.transform;
				scPlayerMove.animator.SetBool ("Grounded", true);
				scPlayerMove.animator.SetFloat ("DistanceToTarget", 0);

				hero.transform.localPosition = new Vector3 (0, 0, 0);
				//hero.transform.localRotation = new Vector3 (0, 0, 0);
				Quaternion temp = hero.transform.rotation;

				temp.x=0;
				temp.y=0;
				temp.z=0;
				hero.transform.localRotation = temp;
				/*hero.transform.rotation.x = 0;
				hero.transform.rotation.z = 0;*/

				mainCam = GameObject.FindGameObjectWithTag ("MainCamera").transform;
				
				rigidbody.AddRelativeForce (new Vector3 (0, sautDepart, 0), ForceMode.Impulse);
				avecPilote = true;
			}
		}
	}

	void testerInput ()
	{
		if (scPlayerMove.conduireAvion) {
			h = Input.GetAxisRaw ("Horizontal");
			v = Input.GetAxisRaw ("Vertical");
			trottle = 10;
		}
	}
}