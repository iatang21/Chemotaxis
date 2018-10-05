 Ghost[] pinky; //declare bacteria variables here   
 void setup()   
 {     
 	size(900,900);
 	background(0);
 	frameRate(30);
 	noStroke();
 	pinky = new Ghost[10];
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
 	int myX,myY,direction,myColor1,myColor2,myColor3;
	 Ghost()
	 {
	    myX = myY = 500;
	    myColor1 = color(230,230,230);
	    myColor2 = color(20,20,20);
	    myColor3 = color(220,220,220);
	 }
  	void walk()
  	{
  		direction = (int) (Math.random()*4);
  		if(direction==0)
  			myX = myX+20;
  		else if(direction==1)
  			myX = myX-20;
  		else if(direction==2)
  			myY = myY+20;
  		else
  			myY = myY-20;
  	}
  	void show() {

	fill(myColor1);
	//skull
	ellipse(myX,myY,50,45);
	rect(myX-10,myY+5,20,23);
	fill(myColor2);
	//eyes
	ellipse(myX-10,myY,15,15);
	ellipse(myX+10,myY,15,15);
	//nose
	strokeJoin(ROUND);
	stroke(0);
	strokeWeight(3);
	triangle(myX,myY+9,myX-3,myY+13,myX+3,myY+13);
	//mouth lines
	noStroke();
	rect(myX-7,myY+21,1,7,30);
	rect(myX-1,myY+21,1,7,30);
	rect(myX+5,myY+21,1,7,30);

	//body
	fill(myColor3);
	rect(myX-3,myY+28,6,75);
	fill(myColor1);
	for(int y = myY; y<=myY+30; y+=10)
	{
	  rect(myX-25,y+35,50,3);
	}
	for(int y=myY+30; y<=myY+50; y+=10)
	{
	  for(int x=myX-25;x<=myX+10; x+=35)
	  {
	    rect(x,y+35,15,3);
	  }
	}

	//pelvis
	stroke(myColor1);
	strokeWeight(5);
	strokeJoin(ROUND);
	triangle(myX-20,myY+103,myX+20,myY+103,myX,myY+115);

	//arms
	strokeWeight(5);
	strokeCap(PROJECT);
	line(myX-30,myY+37,myX-35,myY+60);
	line(myX+30,myY+37,myX+35,myY+60);
	line(myX-37,myY+70,myX-40,myY+90);
	line(myX+37,myY+70,myX+40,myY+90);
	strokeWeight(2);
	line(myX+45,myY+95,myX+50,myY+100);
	line(myX-45,myY+95,myX-50,myY+100);
	line(myX+43,myY+95,myX+47,myY+107);
	line(myX-43,myY+95,myX-47,myY+107);
	line(myX+41,myY+96,myX+43,myY+110);
	line(myX-41,myY+96,myX-43,myY+110);
	line(myX-39,myY+96,myX-37,myY+108);
	line(myX+39,myY+96,myX+37,myY+108);
	line(myX+37,myY+95,myX+32,myY+103);
	line(myX-37,myY+95,myX-32,myY+104);

	//legs
	strokeWeight(8);
	line(myX-15,myY+120,myX-20,myY+145);
	line(myX+15,myY+120,myX+20,myY+145);
	line(myX+22,myY+157,myX+26,myY+180);
	line(myX-22,myY+157,myX-26,myY+180);
	strokeJoin(ROUND);
	strokeWeight(3);
	triangle(myX-30,myY+190,myX-50,myY+210,myX-16,myY+190);
	triangle(myX+30,myY+190,myX+50,myY+210,myX+16,myY+190);
  	}  
 }    