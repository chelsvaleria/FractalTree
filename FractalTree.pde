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
  background(0);     
  stroke(0,0,255);
  drawBranches(320,385,100,3*Math.PI/2);
  line(325,485,320,380); 
  stroke(255,0,0); 
  line(320,480,320,380);   
  drawBranches(320,380,100,3*Math.PI/2);
  stroke(255);
  strokeWeight(0.5);
  line(315,480,320,380); 
  drawBranches(320,375,100,3*Math.PI/2);
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
  double angle1 = angle+branchAngle;
  double angle2 = angle - branchAngle;
  branchLength = branchLength*fractionLength;
  int endX1 = (int)(branchLength*Math.cos(angle1)+x);
  int endY1 = (int)(branchLength*Math.sin(angle1)+y);
  int endX2 = (int)(branchLength*Math.cos(angle2)+x);
  int endY2 = (int)(branchLength*Math.sin(angle2)+y);
  line(x,y,endX1,endY1);
  line(x,y,endX2,endY2);
  if(branchLength > smallestBranch){
    drawBranches(endX1, endY1, branchLength+1, angle1);
    drawBranches(endX2, endY2, branchLength+1, angle2/0.02);
  }
} 
