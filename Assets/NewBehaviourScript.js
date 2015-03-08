#pragma strict
@script RequireComponent(CharacterController)
@script RequireComponent(Animator)

/**
 * Exercice 11, 12 et 13 - Etudiant
 * Script de mouvement (exercice 2)
 * de gestion de caméras et lumières (exercice 3)
 * de gestion Mecanim (exercice 10)
 * @author Jonathan Martel
 * @date 2013-04-18
 * @update 2013-06-17
 * 
 */

/*
 * Contient le controller (accès par l'inspecteur)
 * @access public
 * @var CharacterController
 */
public var controller:CharacterController;


public var animateur:Animator;


/**
 * Vitesse de déplacement de base
 * @access private
 * @var float
 */
public var vitesse:float = 6.0;

/**
 * Vitesse de saut
 * @access private
 * @var float
 */
private var vitesseSaut:float = 5.0;


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
public var vitesseRot:float = 6.0;

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
private var cameraPremier:GameObject;

/**
 * Contient la camera à la troisième personne
 * @access private
 * @var GameObject
 */
private var cameraTroisieme:GameObject;

/**
 * Contient la camera suiveuse
 * @access private
 * @var GameObject
 */
private var cameraSuiveuse:GameObject;


/**
 * Contient la camera en vue de plongee
 * @access private
 * @var GameObject
 */
private var cameraPlongee:GameObject;

/**
 * Numéro de la caméra (pour la touche Tab)
 * @access private
 * @var int
 */
private var numCamera:int = 1;

 /**
 * Contient le nombre de caméras
 * @access private
 * @var int
 */
private var MAX_CAMERA:int = 4;


private var auSol:boolean = true;


private var saut:boolean = false;

/**
 * Force à appliquer sur le projectile
 * @access private
 * @var float
 * @default 10.0
*/
private var forceProjectile:float = 10.0;

/**
 * GameObject du projectile
 * @access public
 * @var GameObject
*/
public var projectile:GameObject;

public var sonPasRobot:AudioClip;
public var sonCourseRobot:AudioClip;

function Awake()
{
	
}

function Start () 
{
	cameraPlongee = GameObject.Find('CamPlongee');
	cameraSuiveuse = GameObject.Find('CamSuiveuse');
	cameraPremier = GameObject.Find('CamPremierePersonne');
	cameraTroisieme = GameObject.Find('CamTroisiemePersonne');
	cameraPlongee.transform.parent = this.transform;
	cameraPremier.transform.parent = this.transform;
	cameraTroisieme.transform.parent = this.transform;
	
	audio.clip = sonPasRobot;
	
	
	
	if(PlayerPrefs.HasKey('playerPosX'))
		{
			var prochainX = PlayerPrefs.GetFloat('playerPosX');
			var prochainY = PlayerPrefs.GetFloat('playerPosY');
			var prochainZ = PlayerPrefs.GetFloat('playerPosZ');	
			
			print('CHARGEMENT');
			transform.position = Vector3 (prochainX, prochainY+2, prochainZ);			

		}
	
	
}

/**
 * Surcharge de la fonction FixedUpdate(), lancé à chaque frame de façon fixe
 * @param void
 * @return void
 */

function FixedUpdate () {
	
}


function OnApplicationQuit()
{

	PlayerPrefs.SetFloat('playerPosX', transform.position.x);
	PlayerPrefs.SetFloat('playerPosY', transform.position.y);
	PlayerPrefs.SetFloat('playerPosZ', transform.position.z);
	print('SAUVEGARDE');

}




function Update()
{
	// Lecture des variables d'axe
	var inputX = Input.GetAxis('Horizontal');	
	var inputY = Input.GetAxis('Vertical');
	var toucheCourse:boolean = Input.GetKey('left shift');
	
	var toucheSave = Input.GetKey("i");
	var toucheReset = Input.GetKey("p");
	
	
	animateur.SetFloat('vitesseDeplacement', inputY);
	
	
	if(Input.GetAxis('Vertical') && !audio.isPlaying)
	{
		audio.Play();
	}
	else if(!Input.GetAxis('Vertical'))
	{
		audio.Stop();
	}
	
	
	if(Input.GetKeyDown('space'))
	{
		saut = true;
	}
	
	
	
	if(toucheReset)
	{
		print('efface le registre');
		PlayerPrefs.DeleteAll();
	}
	
	if(toucheSave)
	{
		OnApplicationQuit();
	}
	
	
	
	// Application de la rotation directement sur le transform
	transform.Rotate(0, inputX * vitesseRot, 0);
	animateur.SetFloat('vitesseRotation', inputX);	
	
	
	if(controller.isGrounded)
   	{ 
		dirMouvement = Vector3(0, 0, inputY);	// Calcul du mouvement
		
		dirMouvement = transform.TransformDirection(dirMouvement);
		if(toucheCourse)
	    {
	    	audio.pitch=1.5;
	    	dirMouvement *= vitesse * course;
	    	animateur.SetFloat('vitesseDeplacement', inputY * course);	
	    }
		else
		{
	    	audio.pitch = 1;
	    	dirMouvement *= vitesse * marche;
	    		
	    }
	    if(saut)
		{
			//dirMouvement.y = vitesseSaut;	// Calcul du mouvement
			saut=false;
			animateur.SetBool('saut', true);	
		}
		else
		{
			animateur.SetBool('saut', false);
		}
		
		
		
	}
	     // Application de la gravité au mouvement
    dirMouvement.y -= gravite*Time.deltaTime;
    
    
    // Affectation du mouvement au Character controller
    controller.Move(dirMouvement * Time.deltaTime);
	
	choixCamera();	// Gère le choix de la caméra.
	
	// Gestion du bouton Tab qui fait le changement de caméra
	if(Input.GetKeyDown(KeyCode.Tab))
	{
		this.numCamera++;
		if(this.numCamera >this.MAX_CAMERA)
		{
			this.numCamera = 1;
		}
	}
	
	
}
function OnTriggerEnter(other: Collider){
 	if(other.gameObject.name == 'trigger')
 	{
 		saut = true;
 	}
}

function choixCamera()
{
	
	if(Input.GetKeyDown(KeyCode.Alpha1) || this.numCamera == 1)
	{
		cameraPremier.SetActive(true);
		cameraTroisieme.SetActive(false);
		cameraSuiveuse.SetActive(false);
		cameraPlongee.SetActive(false);	
		this.numCamera = 1;
	}
	if(Input.GetKeyDown(KeyCode.Alpha2) || this.numCamera == 2)
	{
		cameraPremier.SetActive(false);
		cameraTroisieme.SetActive(true);
		cameraSuiveuse.SetActive(false);
		cameraPlongee.SetActive(false);
		this.numCamera = 2;
	}
	if(Input.GetKeyDown(KeyCode.Alpha3) || this.numCamera == 3)
	{
		cameraPremier.SetActive(false);
		cameraTroisieme.SetActive(false);
		cameraSuiveuse.SetActive(true);
		cameraPlongee.SetActive(false);
		this.numCamera = 3;
	}
	if(Input.GetKeyDown(KeyCode.Alpha4) || this.numCamera == 4)
	{
		cameraPremier.SetActive(false);
		cameraTroisieme.SetActive(false);
		cameraSuiveuse.SetActive(false);
		cameraPlongee.SetActive(true);
		this.numCamera = 4;
	}
}