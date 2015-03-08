using UnityEngine;
using System.Collections;

public class autotexture : MonoBehaviour {
	public float tailleTexture =0.5f;
	// Use this for initialization
	void Start () {
		this.gameObject.renderer.material.SetTextureScale("_MainTex",new Vector2(this.gameObject.transform.lossyScale.x*tailleTexture,this.gameObject.transform.lossyScale.y*tailleTexture))  ;
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	void OnDrawGizmos()
	{
		
		//this.gameObject.renderer.material.SetTextureScale("_MainTex",new Vector2(this.gameObject.transform.lossyScale.x *tailleTexture,this.gameObject.transform.lossyScale.y*tailleTexture))  ;
	}
}
