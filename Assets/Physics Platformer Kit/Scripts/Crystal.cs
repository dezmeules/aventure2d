using UnityEngine;

//class to add to collectible coins
[RequireComponent(typeof(SphereCollider))]
public class Crystal : Coin 
{

	public PlayerMove playerAnimator;

	//setup

	void OnTriggerEnter(Collider other)
	{
		if (other.tag == "Player")
		{	
			playerAnimator=other.GetComponent<PlayerMove>();
			CoinGet();
			//playerAnimator.SetBool("Victoire",true);

		}
	}
	
	void CoinGet()
	{


		playerAnimator.gagner();
		Destroy(gameObject);
	}
}
