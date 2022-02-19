public class Cluster
{
    public final int NUM_STEMS = 7; //number of tendrils per cluster

    public Cluster(int len, int x, int y)
    {
      Tendril[] weed = new Tendril[NUM_STEMS];
      for (int i = 0; i < NUM_STEMS; i ++) {  
        weed[i] = new Tendril(len, (float)(Math.random()*360), x, y);
        weed[i].show();;      }
    }
}
