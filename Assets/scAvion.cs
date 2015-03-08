using UnityEngine;
using System.Collections;

//class to add to collectible coins
[RequireComponent(typeof(SphereCollider))]
public class scAvion : scVehicule 
{
	public GUIManager gui;									//GUIManager script to update with "coins collected"


	public Transform camposition;
	
	public Transform PositionHaut;
	public GameObject helice;
			
	public CameraFollow scCameraFollow;
	

	public override void FixedUpdateVehicule ()
	{
			throttle =10;

			rigidbody.AddRelativeForce (Vector3.forward * powerMoteur);
			rigidbody.AddForce (Vector3.up * powerMoteurUp);
			
			rigidbody.AddRelativeTorque((Vector3.right * powerWhelly)*-v);

			//transform.Rotate (v * Time.deltaTime * powerWhelly*20 * 1, 0 , 0, Space.Self); 
			
		transform.Rotate (0, h * Time.deltaTime * powerSteering*10 * 1 , 0, Space.Self); 
		rigidbody.AddRelativeTorque(Vector3.forward *  h*-0.13f);
		print(this.transform.rotation.eulerAngles.z );


		if(h==0 && v==0)
		{
		if(this.transform.rotation.eulerAngles.z  > 5 && this.transform.rotation.eulerAngles.z  < 180)
		{
			print ("BINGasd");
			rigidbody.AddRelativeTorque(Vector3.forward * -5);
		}

		if(this.transform.rotation.eulerAngles.z  < 355 && this.transform.rotation.eulerAngles.z  > 180)
		{
			print ("BING");
			rigidbody.AddRelativeTorque(Vector3.forward * 5);
		}


		if(this.transform.rotation.eulerAngles.x  > 25 && this.transform.rotation.eulerAngles.x  < 180)
		{
				rigidbody.AddRelativeTorque(Vector3.right*-1);
		}
		
		if(this.transform.rotation.eulerAngles.x  < 335 && this.transform.rotation.eulerAngles.x  > 180)
		{
				rigidbody.AddRelativeTorque(Vector3.right*1);
		}


	


		}

		Vector3 rotationAmount;
		
		rotationAmount = Vector3.forward * ( 15*Time.deltaTime * Mathf.Rad2Deg);
		
		helice.transform.Rotate (rotationAmount);


		/*
		Quaternion newRotation = Quaternion.LookRotation(transform.position - target, this.transform.up);
		///newRotation.x = 0.0f;
		//newRotation.y = 0.0f;
		transform.rotation = Quaternion.Slerp(transform.rotation, newRotation, Time.deltaTime * 200000);

		//transform.Rotate (v * Time.deltaTime * powerWhelly*30 * 1 ,0, 0, Space.Self); 
		//transform.Rotate(transform.position, Vector3.left, Time.deltaTime *v* 90f);

		//transform.localEulerAngles = new Vector3(Mathf.Clamp(transform.localEulerAngles.x + (30*v*Time.deltaTime),350,85),transform.localEulerAngles.y + (30*h*Time.deltaTime),30*-h*Time.deltaTime);



		Vector3 target = new Vector3(this.transform.position.x,this.transform.position.y,1000000000000000000);

		// fast rotation
		float rotSpeed = 360f; 
		
		// distance between target and the actual rotating object
		Vector3 D = target - transform.position;  
		
		
		// calculate the Quaternion for the rotation
		Quaternion rot = Quaternion.Slerp(transform.rotation, Quaternion.LookRotation(D), rotSpeed * Time.deltaTime);
		
		//Apply the rotation 
		transform.rotation = rot; 
		
		// put 0 on the axys you do not want for the rotation object to rotate
		transform.eulerAngles = new Vector3(0, 0,transform.eulerAngles.z); 
*/
		/*transform.localEulerAngles = new Vector3(
			transform.localEulerAngles.x,
			transform.localEulerAngles.y,
			30*-h
			);

		*/
	}
}