#pragma strict
@script RequireComponent(CharacterController)

/**
 * Exercice 5 
 * Description du script
 * @author Vous
 * @author Jonathan Martel
 * @update Nouvelle Date
 * @date 2013-04-18
 * 
 */

/*
 * Contient le controller (accès par l'inspecteur)
 * @access public
 * @var CharacterController
 */
public var controller:CharacterController;

/**
 * Vitesse de déplacement de base
 * @access private
 * @var float
 */
public var vitesse:float = 10;

/**
 * Vitesse de saut
 * @access private
 * @var float
 */
private var vitesseSaut:float = 3.0;


/**
 * Multiplicateur de course
 * @access private
 * @var float
 */
private var course:float = 2;

/**
 * Multiplicateur de marche
 * @access private
 * @var float
 */
private var marche:float = 1.0;

/**
 * Contient le vecteur de déplacement
 * @access private
 * @var Vector3
 */
private var dirMouvement : Vector3 = Vector3.zero;

/**
 * Contient la vitesse de rotation
 * @access private
 * @var float
 */
 
 public var hauteurSaut:float=10;
 

 
private var vitesseRot:float = 2.0;

/**
 * Contient la vitesse de la gravité
 * @access private
 * @var float
 */
private var gravite:float = 10;


/**
 * Contient la camera à la première personne
 * @access private
 * @var GameObject
 */
public var cible:Transform;
public var vue:Transform;
public var Cam_3person:GameObject;

/**
 * Contient la camera suiveuse
 * @access private
 * @var GameObject
 */


private var numCamera:int = 1;

private var timerSaut: float = 0;


 /**
 * Contient le nombre de caméras
 * @access private
 * @var int
 */

private var toucheCourse:boolean;
private var toucheSaut:boolean;
private var vSpeed : float = 0; // keep vertical speed in a separate variable
private var auSol:boolean = true;
private var saut:boolean = false;

function Awake()
{
	DontDestroyOnLoad(this);
}

function Start () 
{
	Cam_3person = GameObject.Find('Cam_3person');
	Cam_3person.SetActive(true);

	//Cam_3person.transform.parent = this.transform;
}

/**
 * Surcharge de la fonction FixedUpdate(), lancé à chaque frame de façon fixe
 * @param void
 * @return void
 */

function FixedUpdate () {	
}

/**
 * Surcharge de la fonction Update(), lancé à chaque frame 
 * @param void
 * @return void
 */

function Update()
{
	// Lecture des variables d'axe
	var inputX = Input.GetAxis('Horizontal');	
	var inputY = Input.GetAxis('Vertical');
	toucheCourse = Input.GetKey('left shift');
	toucheSaut = Input.GetButton("Fire2");



	
	var direction:Vector3 = Vector3.Lerp(Cam_3person.transform.position, cible.position, 0.1);
	
	Cam_3person.transform.position = direction;
	Cam_3person.transform.LookAt(vue, Vector3.up);


	
	// Application de la rotation directement sur le transform
	transform.Rotate(0, inputX * vitesseRot * Input.GetAxis("Vertical") , 0);
	
	dirMouvement = transform.TransformDirection(dirMouvement);
	dirMouvement = transform.forward * Input.GetAxis("Vertical") * vitesse* marche;

	if(controller.isGrounded)
   	{ 
   		vSpeed=0;
   		saut=false;
		//dirMouvement = Vector3(0, 0, inputY);	// Calcul du mouvement
		/*if(toucheCourse)
	    {
	    	dirMouvement *= vitesse * course;
	    }
		else
		{
	    	dirMouvement *= vitesse * marche;
	    }*/
	    if (toucheSaut)
		{
			sauter();
		}
		  
	}
	if (timerSaut > 0)
	{
		//if (toucheSaut)
		//{ 
			timerSaut -= Time.deltaTime;
			vSpeed += Time.deltaTime*5;
		//}
		/*else
		{
			timerSaut = 0;
		}*/
	}	
	
	
	

    // Application de la gravité au mouvement
	vSpeed -= gravite * Time.deltaTime;

	dirMouvement.y = vSpeed; // include vertical speed

    // Affectation du mouvement au Character controller
    controller.Move(dirMouvement * Time.deltaTime);
	
	
}
	// Gestion du bouton Tab qui fait le changement de caméra
/*	if(Input.GetKeyDown(KeyCode.Tab))
	{
		this.numCamera++;
		if(this.numCamera >this.MAX_CAMERA)
		{
			this.numCamera = 1;
		}
	}*/
	
	
	function sauter()
	{
		saut=true;
		timerSaut = 1;
		dirMouvement.y = hauteurSaut;
		vSpeed = hauteurSaut; 
	}
	

    function OnTriggerEnter (other : Collider)
    {   
         sauter();
        //Destroy(other.gameObject);
    }
