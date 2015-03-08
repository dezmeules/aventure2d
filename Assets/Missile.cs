using UnityEngine;
using System.Collections;

public class Missile : MonoBehaviour {

	public float powerMoteur;
	public GameObject target;
	public GameObject explosion;

	public Vector3 ondulation;
	public float random;
	public Vector3[] path;


	public int tonpoint=0;
	// Use this for initialization
	void Start () {
		path = new [] { new Vector3(0f,0f,0f),new Vector3(0f,0f,0f),new Vector3(0f,0f,0f), new Vector3(1f,1f,1f) };

		path[0]=this.transform.position;


		ondulation= Vector3.Lerp(target.transform.position, this.transform.position,0.9f);

		path[1]=ondulation;
		
		ondulation= Vector3.Lerp(target.transform.position, this.transform.position,0.4f);

		
		
		path[2]=ondulation;
		path[3]=target.transform.position;

		
		random = Vector3.Distance (path[0], path[1])/5;
		path[1].x += Random.Range(-random, random);
		path[1].y += Random.Range(-random, random);
		path[1].z += Random.Range(-random, random);

		random = Vector3.Distance (path[1], path[2])/5;
		path[2].x += Random.Range(-random, random);
		path[2].y += Random.Range(-random, random);
		path[2].z += Random.Range(-random, random);

		this.transform.LookAt(path[3]);

	}
	
	// Update is called once per frame
	void Update () {

		if(Vector3.Distance (this.transform.position, path[tonpoint])<4)
		{
			if(tonpoint<=2)
			{
			tonpoint++;
			}


		}
		if(tonpoint>2)
		{
			path[3]=target.transform.position;
			if(Vector3.Distance (this.transform.position, path[3])<3)
			{
				Instantiate(explosion,  transform.position, transform.rotation);
				Destroy(this.gameObject);
			}}
			
			
		Vector3 pos = path[tonpoint]-transform.position;
		Quaternion newRot = Quaternion.LookRotation(pos);
		transform.rotation = Quaternion.Slerp(transform.rotation, newRot, 5f*Time.deltaTime);

		//powerMoteur+=1.1f;

		rigidbody.AddRelativeForce(Vector3.forward *  Time.deltaTime* powerMoteur);
	}
}