using UnityEngine;
using System.Collections;

public class scAuto : MonoBehaviour {
	
public float speed = 6.0F;
    public float jumpSpeed = 8.0F;
    public float gravity = 20.0F;
	
	public float MacVitesseAuto;
	public float MaxPower;
	
	float AngleRot;
	public float MaxAngleRot;

	float currentTrottle;
	float currentPower;
	float currentSterring;
	
    private Vector3 moveDirection = Vector3.zero;
	 CharacterController controller;

	// Use this for initialization
	void Start () {
	   
		controller = GetComponent<CharacterController>();

	}
	
	// Update is called once per frame
	void Update () {
		currentTrottle = Input.GetAxis("Vertical");
		currentSterring = Input.GetAxis("Horizontal");
		
		
        if (controller.isGrounded) {
			
			currentPower+=currentTrottle;
			
			if(currentPower>=MaxPower)
			{
				currentPower=MaxPower;
			}
			
            moveDirection = new Vector3(0, 0, currentPower);
            moveDirection = transform.TransformDirection(moveDirection);
			
			transform.Rotate(Vector3.up *currentSterring*MaxAngleRot* Time.deltaTime, Space.World);
			
            moveDirection *= speed;
            if (Input.GetButton("Jump"))
                moveDirection.y = jumpSpeed;
        }
		
        moveDirection.y -= gravity * Time.deltaTime;
        controller.Move(moveDirection * Time.deltaTime);
		
		
	}
}
