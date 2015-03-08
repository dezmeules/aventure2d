using UnityEngine;
using System.Collections;

public class grosseroue : MonoBehaviour {

	public float vitesseTourner = 5f;
	public Vector3 eulerAngleVelocity = new Vector3(0, 1, 0);

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void FixedUpdate () {
		//transform.Rotate(Vector3.up * Time.deltaTime*vitesseTourner);
		Quaternion deltaRotation = Quaternion.Euler(eulerAngleVelocity * Time.deltaTime);
		rigidbody.MoveRotation(rigidbody.rotation * deltaRotation);
	}
}
