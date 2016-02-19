private double fractionLength = .8; 
private int smallestBranch = 10; 
private double branchAngle = .2;  
public void setup() 
{   
	size(640,480);    
	noLoop(); 
} 
public void draw() 
{   
	background(204,255,229);
	strokeWeight(.6);
	stroke(0);
	line(323,510,323,380);
	drawBranches(323,380,100,3*Math.PI/2);
	strokeWeight(.7);
	stroke(0,51,0);
	line(324,510,324,380);
	drawBranches(324,380,100,3*Math.PI/2);
	strokeWeight(.8);
	stroke(0,102,0);
	line(326,510,326,380);
	drawBranches(326,380,100,3*Math.PI/2); 
	strokeWeight(.9);
	stroke(0,153,0);
	line(329,510,329,380);
	drawBranches(329,380,100,3*Math.PI/2);
	strokeWeight(1);
	stroke(0,202,0);
	line(325,510,325,380);
	drawBranches(325,380,100,3*Math.PI/2); 
	strokeWeight(1.1);
	stroke(0,255,0);
	line(320,480,320,380);
	drawBranches(320,380,100,3*Math.PI/2); 
	strokeWeight(2);
	stroke(0);
	fill(102,204,0);
	rect(0,380,640,100);
	line(250,380,270,350);
	line(270,350,290,380);
	line(270,350,270,320);
	line(270,320,250,340);
	line(270,320,290,340);
	fill(255);
	ellipse(270,295,50,50);
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
	double angle1 = angle + branchAngle;
	double angle2 = angle - branchAngle;  
	branchLength = branchLength * fractionLength;
	int endX1 = (int)(branchLength*Math.cos(angle1)+x);
	int endY1 = (int)(branchLength*Math.sin(angle1)+y);
	int endX2 = (int)(branchLength*Math.cos(angle2)+x);
	int endY2 = (int)(branchLength*Math.sin(angle2)+y);
	line(x,y,endX1,endY1);
	line(x,y,endX2,endY2);
	if (branchLength > smallestBranch) 
	{
		drawBranches(endX1,endY1,branchLength,angle1);
		drawBranches(endX2,endY2,branchLength,angle2);
	}
}
