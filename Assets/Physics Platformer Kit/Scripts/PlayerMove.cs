﻿using UnityEngine;
using System.Collections;

//handles player movement, utilising the CharacterMotor class
[RequireComponent(typeof(CharacterMotor))]
[RequireComponent(typeof(DealDamage))]
[RequireComponent(typeof(AudioSource))]
public class PlayerMove : MonoBehaviour 
{
	//setup
	public bool conduireAvion;
	public bool sidescroller;					//if true, won't apply vertical input
	public Transform mainCam, floorChecks;		//main camera, and floorChecks object. FloorChecks are raycasted down from to check the player is grounded.
	public Animator animator;					//object with animation controller on, which you want to animate
	public AudioClip jumpSound;					//play when jumping
	public AudioClip landSound;					//play when landing on ground
	
	//movement
	public Vector3 vector3gravite =  new Vector3(0, -2, 0);		//normal jump force

	public float accel = 70f;					//acceleration/deceleration in air or on the ground
	public float airAccel = 18f;			
	public float decel = 7.6f;
	public float airDecel = 1.1f;
	[Range(0f, 5f)]
	
		public float runspeed = 1.1f;
	[Range(0f, 5f)]

	public bool video =false;

	public float rotateSpeed = 0.7f, airRotateSpeed = 0.4f;	//how fast to rotate on the ground, how fast to rotate in the air
	public float maxSpeed = 9;								//maximum speed of movement in X/Z axis
	public float slopeLimit = 40, slideAmount = 35;			//maximum angle of slopes you can walk on, how fast to slide down slopes you can't
	public float movingPlatformFriction = 7.7f;				//you'll need to tweak this to get the player to stay on moving platforms properly
	
	//jumping
	public Vector3 reboundjumpForce =  new Vector3(0, 6, 0);		//normal jump force
	public Vector3 jumpForce =  new Vector3(0, 6, 0);		//normal jump force
	public Vector3 secondJumpForce = new Vector3(0, 10, 0); //the force of a 2nd consecutive jump
	public Vector3 thirdJumpForce = new Vector3(0, 13, 0);	//the force of a 3rd consecutive jump
	public Vector3 MaxpowerJump = new Vector3(0, 1, 0);	//the force of a 3rd consecutive jump
	public float MaxpowerJumpY = 0.1f;
	
	public float jumpDelay = 0.1f;							//how fast you need to jump after hitting the ground, to do the next type of jump
	public float jumpLeniancy = 0.17f;						//how early before hitting the ground you can press jump, and still have it work
	
	
	[HideInInspector]
	public int onEnemyBounce;
	
	
	//flying
	public Vector3 flyingForce =  new Vector3(0, 1, 0);		//quand on plane
	public float airFlyPressTime, MaxairFlyPressTime, powerJumpPressTime, powerJumpTempVoler, MaxpowerJumpTempVoler, tempVoler;
	public bool pouvoirVoler=true;
	public GameObject GameobjectCanard;


	public bool HoldJumpButton;
	
	private int onJump;
	public bool grounded;
	private Transform[] floorCheckers;
	private Quaternion screenMovementSpace;
	private float airPressTime, groundedCount, curAccel, curDecel, curRotateSpeed, slope;
	private Vector3 direction, moveDirection, screenMovementForward, screenMovementRight, movingObjSpeed;
	
	private CharacterMotor characterMotor;
	private DealDamage dealDamage;
	
	//setup
	void Awake()
	{
		//create single floorcheck in centre of object, if none are assigned
		if(!floorChecks)
		{
			floorChecks = new GameObject().transform;
			floorChecks.name = "FloorChecks";
			floorChecks.parent = transform;
			floorChecks.position = transform.position;
			GameObject check = new GameObject();
			check.name = "Check1";
			check.transform.parent = floorChecks;
			check.transform.position = transform.position;
			Debug.LogWarning("No 'floorChecks' assigned to PlayerMove script, so a single floorcheck has been created", floorChecks);
		}
		//assign player tag if not already
		if(tag != "Player")
		{
			tag = "Player";
			Debug.LogWarning ("PlayerMove script assigned to object without the tag 'Player', tag has been assigned automatically", transform);
		}
		//usual setup
		mainCam = GameObject.FindGameObjectWithTag("MainCamera").transform;
		dealDamage = GetComponent<DealDamage>();
		characterMotor = GetComponent<CharacterMotor>();
		//gets child objects of floorcheckers, and puts them in an array
		//later these are used to raycast downward and see if we are on the ground
		floorCheckers = new Transform[floorChecks.childCount];
		for (int i=0; i < floorCheckers.Length; i++)
			floorCheckers[i] = floorChecks.GetChild(i);

		GameobjectCanard.transform.localPosition=new Vector3(0,-0.3f,0);
		
	}
	
	//get state of player, values and input
	void Update()
	{	
		if(!conduireAvion)
		{

			if(!video)
			{
		//handle jumping
		JumpCalculations ();
			

		
		
			
			
		//adjust movement values if we're in the air or on the ground
		curAccel = (grounded) ? accel : airAccel;
		curDecel = (grounded) ? decel : airDecel;
		curRotateSpeed = (grounded) ? rotateSpeed : airRotateSpeed;
				
		/*if (Input.GetButton ("Run") && grounded){
			curAccel=curAccel*runspeed;
		}*/
		//get movement axis relative to camera
		screenMovementSpace = Quaternion.Euler (0, mainCam.eulerAngles.y, 0);
		screenMovementForward = screenMovementSpace * Vector3.forward;
		screenMovementRight = screenMovementSpace * Vector3.right;
		
		//get movement input, set direction to move in
		float h = Input.GetAxisRaw ("Horizontal");
		float v = Input.GetAxisRaw ("Vertical");
		//only apply vertical input to movemement, if player is not sidescroller
		if(!sidescroller)
			direction = (screenMovementForward * v) + (screenMovementRight * h);
		else
			direction = Vector3.right * h;
			moveDirection = transform.position + direction;
		}
		}
	}
	
	//apply correct player movement (fixedUpdate for physics calculations)
	void FixedUpdate() 
	{

		if(!conduireAvion)
		{

			//are we grounded
			grounded = IsGrounded ();
			//move, rotate, manage speed
			characterMotor.MoveTo (moveDirection, curAccel, 0.7f, true);
			if (rotateSpeed != 0 && direction.magnitude != 0)
				characterMotor.RotateToDirection (moveDirection , curRotateSpeed * 5, true);
			characterMotor.ManageSpeed (curDecel, maxSpeed + movingObjSpeed.magnitude, true);
			//set animation values
			if(animator)
			{
				animator.SetFloat("DistanceToTarget", characterMotor.DistanceToTarget);
				animator.SetBool("Grounded", grounded);
				animator.SetFloat("YVelocity", rigidbody.velocity.y);
			}
			if(!grounded)
			{
				gravite();
			
			}
		}
	}
	
	//prevents rigidbody from sliding down slight slopes (read notes in characterMotor class for more info on friction)
	void OnCollisionStay(Collision other)
	{
		//only stop movement on slight slopes if we aren't being touched by anything else
		if (other.collider.tag != "Untagged" || grounded == false)
			return;
		//if no movement should be happening, stop player moving in Z/X axis
		if(direction.magnitude == 0 && slope < slopeLimit && rigidbody.velocity.magnitude < 2)
		{
			//it's usually not a good idea to alter a rigidbodies velocity every frame
			//but this is the cleanest way i could think of, and we have a lot of checks beforehand, so it shou
			rigidbody.velocity = Vector3.zero;
		}
	}
	
	//returns whether we are on the ground or not
	//also: bouncing on enemies, keeping player on moving platforms and slope checking
	private bool IsGrounded() 
	{
		//get distance to ground, from centre of collider (where floorcheckers should be)
		float dist = collider.bounds.extents.y;
		//check whats at players feet, at each floorcheckers position
		foreach (Transform check in floorCheckers)
		{
			RaycastHit hit;
			if(Physics.Raycast(check.position, Vector3.down, out hit, dist + 0.05f))
			{
				if(!hit.transform.collider.isTrigger)
				{
					//slope control
					slope = Vector3.Angle (hit.normal, Vector3.up);
					//slide down slopes
					if(slope > slopeLimit && hit.transform.tag != "Pushable")
					{
						Vector3 slide = new Vector3(0f, -slideAmount, 0f);
						rigidbody.AddForce (slide, ForceMode.Force);
					}
					//enemy bouncing
					if (hit.transform.tag == "Enemy" && rigidbody.velocity.y < 0)
					{
						Health enemyHealth;

						enemyHealth = hit.transform.GetComponent<Health>();
						enemyHealth.tomberDessus();
						onEnemyBounce ++;
						//dealDamage.Attack(hit.transform.gameObject, 1, 0f, 0f);
						Jump(reboundjumpForce);
					}
					else
						onEnemyBounce = 0;
					//moving platforms
					if (hit.transform.tag == "MovingPlatform" || hit.transform.tag == "Pushable")
					{
						movingObjSpeed = hit.transform.rigidbody.velocity;
						movingObjSpeed.y = 0f;
						//9.5f is a magic number, if youre not moving properly on platforms, experiment with this number
						rigidbody.AddForce(movingObjSpeed * movingPlatformFriction * Time.fixedDeltaTime, ForceMode.VelocityChange);
					}
					else
					{
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
	
	//jumping
	private void JumpCalculations()
	{
		//keep how long we have been on the ground
		groundedCount = (grounded) ? groundedCount += Time.deltaTime : 0f;
		
		//play landing sound
		if(groundedCount < 0.25 && groundedCount != 0 && !audio.isPlaying && landSound && rigidbody.velocity.y < 1)
		{
			/*audio.volume = Mathf.Abs(rigidbody.velocity.y)/40;
			audio.clip = landSound;
			audio.Play ();*/
		}
		//if we press jump in the air, save the time
		if (Input.GetButtonDown ("Jump") && !grounded)
		{
			airPressTime = Time.time;
		}
		
		if (Input.GetButtonDown ("Jump") && grounded){
			HoldJumpButton=true;
		}
		
		
		
		if (HoldJumpButton && !grounded)
		{
			if(powerJumpPressTime==0)
			{
				powerJumpPressTime=Time.time;
			}
			
			powerJumpTempVoler=Time.time-powerJumpPressTime;
			
			rigidbody.AddRelativeForce (new Vector3(0, MaxpowerJumpY*Time.deltaTime, 0), ForceMode.Impulse);

			
			if(powerJumpTempVoler>MaxpowerJumpTempVoler)
			{
				HoldJumpButton=false;
				powerJumpPressTime=0;
			}
		}
			
			
			
			
		if (Input.GetButtonUp ("Jump"))
		{
			HoldJumpButton=false;
			airFlyPressTime=0;
			tempVoler=0;
		}
		
		if(grounded)
		{
			pouvoirVoler=true;	
		}
			
		if (Input.GetButton ("Jump") && !grounded && !HoldJumpButton && pouvoirVoler)
		{
			if(airFlyPressTime==0)
			{
				airFlyPressTime=Time.time;
			}
			tempVoler=Time.time-airFlyPressTime;
			
			Planer (flyingForce);
			
			if(tempVoler>MaxairFlyPressTime)
			{
				pouvoirVoler=false;
				airFlyPressTime=0;
			}
		}
		
		//if were on ground within slope limit
		if (grounded && slope < slopeLimit)
		{
			//and we press jump, or we pressed jump justt before hitting the ground
			if (Input.GetButtonDown ("Jump") || airPressTime + jumpLeniancy > Time.time)
			{	
				//increment our jump type if we haven't been on the ground for long
				onJump = (groundedCount < jumpDelay) ? Mathf.Min(2, onJump + 1) : 0;
				//execute the correct jump (like in mario64, jumping 3 times quickly will do higher jumps)
				if (onJump == 0)
						Jump (jumpForce);
				else if (onJump == 1)
						Jump (secondJumpForce);
				else if (onJump == 2)
						Jump (thirdJumpForce);
			}
		}
	}
	
	//push player at jump force
	public void Jump(Vector3 jumpVelocity)
	{
		if(jumpSound)
		{
			/*audio.volume = 1;
			audio.clip = jumpSound;
			audio.Play ();*/
		}
		rigidbody.velocity = new Vector3(rigidbody.velocity.x, 0f, rigidbody.velocity.z);
		rigidbody.AddRelativeForce (jumpVelocity, ForceMode.Impulse);
		airPressTime = 0f;
	}


	public void gravite()
	{
		rigidbody.AddRelativeForce (vector3gravite, ForceMode.Force);
	}


	public void gagner()
	{

		moveDirection = transform.position;
		//characterMotor.MoveTo (moveDirection, curAccel, 0.7f, true);

		characterMotor.RotateToDirection (mainCam.transform.position , 500, true);

		animator.SetBool("Victoire",true);

		video=true;
		//animator.SetFloat("DistanceToTarget",0);


	}
	
	
	public void Planer(Vector3 jumpVelocity)
	{
		//rigidbody.velocity = new Vector3(rigidbody.velocity.x, 0f, rigidbody.velocity.z);
		if(pouvoirVoler)
		{
			if(rigidbody.velocity.y<0)
			{
				rigidbody.AddRelativeForce (jumpVelocity, ForceMode.Impulse);
			}
		}
	}
	

}