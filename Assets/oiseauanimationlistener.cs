using UnityEngine;
using System.Collections;

public class oiseauanimationlistener : MonoBehaviour {

	public PlayerMove lePlayerMove;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	public void attaquerAnim(string nomattaque)
	{
		print ("ELECTRICBOOGALOO"+ nomattaque);
		lePlayerMove.peutAttaquer=true;
	}
}
