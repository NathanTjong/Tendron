public class Cluster
{
    public final static int NUM_STEMS = 7; //number of tendrils per cluster
    
    public Cluster(int len, int x, int y)
    {
      Tendril[] bob = new Tendril[7];
      for(int i=0; i<7; i++){
        bob[i] = new Tendril(len, Math.random()*2*PI, x, y );
        bob[i].show();
      }
    }
}
