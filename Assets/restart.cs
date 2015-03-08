using UnityEngine;
using System.Collections;

public class restart : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
	
	 void OnGUI()
	 {
	     //makes a GUI button at coordinates 10, 100, and a size of 200x40
	     if(GUI.Button(new Rect (10,100,200,40),"Restart"))
	     {
	        //Loads a level
	       Application.LoadLevel(0);
	     }
	 }
}
