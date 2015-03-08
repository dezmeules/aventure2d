using UnityEngine;
using System.Collections;
using System.Collections.Generic;

//simple "platformer enemy" AI
[RequireComponent(typeof(CharacterMotor))]
[RequireComponent(typeof(DealDamage))]
public class EnemyAI : MonoBehaviour 
{
	public float acceleration = 35f;					//acceleration of enemy movement
	public float deceleration = 8f;						//deceleration of enemy movement
	public float rotateSpeed = 0.7f;					//how fast enemy can rotate
	public float speedLimit = 10f;						//how fast enemy can move
	public Vector3 bounceForce = new Vector3(0, 13, 0);	//force to apply to player when player jumps on enemies head
	public AudioClip bounceSound;						//sound when you bounce on enemies
	public float pushForce = 10f;						//how far away to push the player when they are attacked by the enemy
	public float pushHeight = 7f;						//how high to push the player when they are attacked by the enemy
	public int attackDmg = 1;							//how much damage to deal to the player when theyre attacked by this enem
	public bool chase = true;							//should this enemy chase objects inside its sight?
	public bool ignoreY = true;							//ignore Y axis when chasing? (this would be false for say.. a flying enemy)
	public float chaseStopDistance = 0.7f;				//stop this far away from object when chasing it
	public GameObject sightBounds;						//trigger for sight bounds
	public GameObject attackBounds;						//trigger for attack bounds (player is hurt when they enter these bounds)
	
	private TriggerParent sightTrigger;
	private TriggerParent attackTrigger;
	private PlayerMove playerMove;
	private CharacterMotor characterMotor;
	private DealDamage dealDamage;


	public NavMeshAgent agent;


	public GameObject tapatrouille;
	//public GameObject[] pointsPatrouille;
	public List<GameObject> pointsPatrouille = new List<GameObject>();
	public Transform pointsPatrouilleposition;

	public int indexPatrouille=0;
	public float distance;
	public GameObject directionPatroll;
	
	//setup
	void Start()
	{	
		directionPatroll = transform.Find("directionPatroll").gameObject;


		foreach(Transform child in directionPatroll.transform){
			if(child.name=="pointPatrouille"){

				pointsPatrouille.Add(child.gameObject);
			}
		}


		characterMotor = GetComponent<CharacterMotor>();
		dealDamage = GetComponent<DealDamage>();

		tapatrouille = transform.Find("directionPatroll/tapatrouille").gameObject;


		//pointsPatrouille = gameObject.FindGameObjectsWithTag("pointPatrouille");
		indexPatrouille=0;
		pointsPatrouilleposition = pointsPatrouille[indexPatrouille].transform;

		agent = tapatrouille.GetComponent<NavMeshAgent>();

		directionPatroll.transform.parent=null;
		//avoid setup errors
		if(tag != "Enemy")
		{
			tag = "Enemy";
			Debug.LogWarning("'EnemyAI' script attached to object without 'Enemy' tag, it has been assign automatically", transform);
		}
		
		if(sightBounds)
		{
			sightTrigger = sightBounds.GetComponent<TriggerParent>();
			if(!sightTrigger)
				Debug.LogError("'TriggerParent' script needs attaching to enemy 'SightBounds'", sightBounds);
		}
		if(!sightBounds)
			Debug.LogWarning("Assign a trigger with 'TriggerParent' script attached, to 'SightBounds' or enemy will not be able to see", transform);
		
		if(attackBounds)
		{
			attackTrigger = attackBounds.GetComponent<TriggerParent>();
			if(!attackTrigger)
				Debug.LogError("'TriggerParent' script needs attaching to enemy 'attackBounds'", attackBounds);
		}
		else
			Debug.LogWarning("Assign a trigger with 'TriggerParent' script attached, to 'AttackBounds' or enemy will not be able to attack", transform);
	}








	void Update()
	{
		if (sightTrigger && sightTrigger.colliding && chase)
		{
			characterMotor.MoveTo (sightTrigger.hitObject.transform.position, acceleration, chaseStopDistance, ignoreY);	
		}
		else{

			agent.SetDestination(pointsPatrouille[indexPatrouille].transform.position);

			distance = Vector3.Distance(pointsPatrouille[indexPatrouille].transform.position, tapatrouille.transform.position);

			characterMotor.MoveTo (tapatrouille.transform.position, acceleration, chaseStopDistance, ignoreY);	


			if(distance<1)
			{
				if(indexPatrouille < 1)
				{
					indexPatrouille++;
				}
				else{
					indexPatrouille=0;
				}
			}

		
		}
		if (attackTrigger && attackTrigger.collided)
			dealDamage.Attack(attackTrigger.hitObject, attackDmg, pushHeight, pushForce);
	}
	
	void FixedUpdate()
	{
		characterMotor.ManageSpeed(deceleration, speedLimit, ignoreY);
		characterMotor.RotateToVelocity (rotateSpeed, ignoreY);
	}
	
	//bounce player when they land on this enemy
	public void BouncedOn()
	{	
		if(!playerMove)
			playerMove = GameObject.FindGameObjectWithTag("Player").GetComponent<PlayerMove>();
		if (bounceSound)
			//AudioSource.PlayClipAtPoint(bounceSound, transform.position);
		if(playerMove)
		{
			Vector3 bounceMultiplier = new Vector3(0f, 1.5f, 0f) * playerMove.onEnemyBounce;
			playerMove.Jump (bounceForce + bounceMultiplier);
		}
		else
			Debug.LogWarning("'Player' tagged object landed on enemy, but without playerMove script attached, is unable to bounce");
	}
}













































	/*
	public float nbDocument;
	
	public NavMeshAgent agent;
	public Transform target;
	public GameObject image;
	
	public Animator animator;
	public Vector3 OldTransformPosition;
	public float distanceparcouru;
	public float distance;

	public GameObject bureauPrefere;
	public GameObject imprimante;
	public scBureau scbureau;
	
	
	// Use this for initialization
	void Start () {
		bureaux = GameObject.FindGameObjectsWithTag("bureau");
		verifierquelbureaualler();
	}
	
	// Update is called once per frame
	void Update () {
		
		agent.SetDestination(target.position);
		
		distanceparcouru = Vector3.Distance(OldTransformPosition, this.transform.position)*100;
		distance = Vector3.Distance(target.position, this.transform.position);
		
		Vector3 temp = image.transform.localScale;
		
		if(OldTransformPosition.x>this.transform.position.x)
		{
			temp.x=1;
		}
		if(OldTransformPosition.x<this.transform.position.x)
		{
			temp.x=-1;
		}
		
		image.transform.localScale=temp;
		
		OldTransformPosition=this.transform.position;
		animator.SetFloat("vitesse", distanceparcouru);
		
		distance = Vector3.Distance(target.position, this.transform.position);

		if(distance<0.5)
		{
			
			
			if(nbDocument>0)
			{
				verifierquelbureaualler();
				scbureau.nbDocument+=10;
				nbDocument-=10;
			}
			
			else{
				target= imprimante.transform;
			}
			
		}
		
		
	}
	
	void verifierquelbureaualler()
	{
		
		float pireBureau=30000000000000000.0f;
		print ("checker les bureau1");
		
		bureauPrefere = bureaux[0];
		
		
		foreach (GameObject bureau in bureaux)
		{
			scbureau = bureau.gameObject.GetComponent<scBureau>();
			
			if(scbureau.nbDocument < pireBureau)
			{
				bureauPrefere=bureau;
				pireBureau=scbureau.nbDocument;
				target = bureauPrefere.transform;
			}
		}
		
	}
}


*/















