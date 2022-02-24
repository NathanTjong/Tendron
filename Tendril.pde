class Tendril
{
  public final static int SEG_LENGTH = 4; //length of each segment in the tendril
  private int myNumSegments, myX, myY;
  private double myAngle;
  
  /**
   Class constructor
   len is how many segments in this tendril (each a fixed length, 4 is a good start)
   theta is tendril starting angle in radians 
   x, y  is the starting (x,y) coordinate
   */
  public Tendril(int len, double theta, int x, int y)
  {
    myNumSegments=len;
    myX=x;
    myY=y;
    myAngle=theta;
  }
  public void show()
  {
    int startX=myX;
    int startY=myY;
    int endX=0;
    int endY=0;
    for(int i=0; i<myNumSegments; i++){
      stroke((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
      myAngle+=Math.random()*0.4-0.2;
      endX=startX+(int)(Math.cos(myAngle)*SEG_LENGTH);
      endY=startY+(int)(Math.sin(myAngle)*SEG_LENGTH);
      line(startX, startY, endX, endY);
      startX=endX;
      startY=endY;
    }
    if(myNumSegments>=3){
      Cluster bobb = new Cluster(myNumSegments-8, endX, endY);
    }
  }
}
