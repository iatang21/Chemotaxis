 Ghost[] pinky; //declare bacteria variables here   
 void setup()   
 {     
 	size(500,500);
 	background(0);
 	frameRate(30);
 	noStroke();
 	pinky = new Ghost[4];
 	for(int i=0;i<pinky.length;i++)
 		pinky[i] = new Ghost();
 	//initialize bacteria variables here   
 }   
 void draw()   
 {  
 	background(0);
 	for(int i = 0;i<pinky.length;i++)
 	{  
 		pinky[i].show();
 		pinky[i].walk();
 	}
 	//move and show the bacteria   
 }  
 class Ghost    
 {     
 	int myX,myY,direction,myColor1,myColor2;
	 Ghost()
	 {
	    myX = myY = 250;
	    myColor1 = color(230,230,230);
	    myColor2 = color(20,20,20);
	 }
  	void walk()
  	{
  		direction = (int) (Math.random()*4);
  		if(direction==0)
  			myX = myX+10;
  		else if(direction==1)
  			myX = myX-10;
  		else if(direction==2)
  			myY = myY+10;
  		else
  			myY = myY-10;
  	}
  	void show() {
    	fill(myColor1);
    	ellipse(myX,myY,50,45);
    	rect(myX-10,myY+5,20,23);
    	fill(myColor2);
    	ellipse(myX-10,myY,13,13);
    	ellipse(myX+10,myY,13,13);
    	rect(myX-7,myY+17,2,10);
    	rect(myX,myY+17,2,10);
    	rect(myX+5,myY+17,2,10);
  	}  
 }    