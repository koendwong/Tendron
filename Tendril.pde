public class Tendril
{
  public final int SEG_LENGTH = 4; //length of each segment in the tendril
  private int myNumSegments;
  private float startX, startY, endX, endY;
  private float myAngle;
  private int myAngleVariance = 20;
  
  /**
   Class constructor
   len is how many segments in this tendril (each a fixed length, 4 is a good start)
   theta is tendril starting angle in radians 
   x, y  is the starting (x,y) coordinate
   */
  public Tendril(int len, float degrees, int x, int y)
  {
    myNumSegments = len;
    myAngle = degrees;
    startX = x; startY = y;
  }
  public void show()
  {
    noFill();
    for (int i = 0; i < myNumSegments; i ++) {
      myAngle += (Math.random()*2*myAngleVariance)-myAngleVariance;
      endX = startX + SEG_LENGTH * (float)Math.cos(radians(myAngle));
      endY = startY + SEG_LENGTH * (float)Math.sin(radians(myAngle));
      stroke(110, 50, i*255/myNumSegments);
      line(startX, startY, endX, endY);
      startX = endX;
      startY = endY;
    }
    if (myNumSegments > 4) {
        Cluster r = new Cluster(4*myNumSegments/10, (int)endX, (int)endY);
      }
  }
}
