public void setup()
{
  size(1000,900);
  background(255,218,185);
}

public void draw()
{
  sierpinski(120, 850, 750);
}

public void mouseDragged()//optional
{

}

public void sierpinski(int x, int y, int len) 
{
  if(len <= 20){
    noStroke();
    fill(191,157,33);
    triangle(x, y, x+(len/2), y-len, x+len, y);
  }
  else{
    sierpinski(x, y, len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, y-len/2, len/2);
  }
}
