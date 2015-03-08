private var pointCount : int = 6;
private var pointDeviation : float = 3;
private var path : Vector3[];
private var rootPosition : Vector3;


public var destination:GameObject;

function Start(){
	GenerateRandomPath();
	iTween.MoveTo(gameObject,iTween.Hash("path",path,"time",3,"easetype",iTween.EaseType.easeInCubic));		
}

function OnDrawGizmos(){
	if(path){
		iTween.DrawPath(path);	
	}
}

function GenerateRandomPath(){
	rootPosition = transform.position;
	path = new Vector3[pointCount+2];
	path[0]=rootPosition;
	path[pointCount+1]=destination.transform.position;
	
	var tempPoint :Vector3;
	
	
	//path[pointCount+1]=new Vector3(rootPosition.x+(pathLength+pointGap),rootPosition.y,rootPosition.z);
	for (var i : int = 1; i < pointCount; i++) {
	   
	   tempPoint = rootPosition + (destination.transform.position * (i/pointCount));

	
		var randomZ : float = tempPoint.z + Random.Range(-pointDeviation,pointDeviation);
		var randomY : float = tempPoint.y + Random.Range(-pointDeviation,pointDeviation);
		var newX : float = tempPoint.x*i;
		path[i]=new Vector3(newX,randomY,randomZ);
	}
}