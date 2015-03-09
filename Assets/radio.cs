using UnityEngine;
using System.Collections;

public class radio : MonoBehaviour {


	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	public void jouerChanson(string NoChanson)
	{

		AudioClip tachanson = Resources.Load("Sound/Musique/"+NoChanson) as AudioClip;

		this.audio.clip = tachanson;
		audio.Play();
	}
}
