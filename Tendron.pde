public void setup()
{
  colorMode(HSB);
  size(1000, 1000);
  background(0);
  noLoop();
}

public void draw()
{
  background(0);
  Cluster c = new Cluster(64, 500, 500);
  if (!mousePressed)
    noLoop();
}

public void mousePressed()
{
  loop();
}
