int widh, lengh, deph;
float diameter = 50;
float radius = diameter/2;
float x = 0;
float y = 0;
float xDirection = 10;
float yDirection = 10;
float r, g, b;
float xCurrent = xDirection;
float yCurrent = yDirection;

void setup () {
  size (800, 600);
  smooth ();
  x = radius;
  y = height/2;
}

void draw () {

  background (255);

  r = random (0, 255);
  g = random (0, 255);
  b = random (0, 255);
  
  x = x +xDirection;
  y = y + yDirection;
  strokeWeight(0);
  fill (r, g, b);
  ellipse (x, y, diameter, diameter);
  check();
 

}

private void check(){

  if (x > width - radius || x < radius)
  {
    
    xDirection = -xDirection;
    xCurrent = xDirection;
 
  }
  
   if (y > height - radius || y < radius)
  {
    
    yDirection = -yDirection;
    yCurrent = yDirection;
   
  }
  
  
  if (mousePressed)
  {
    
    xDirection = 0;
    yDirection = 0;
  }
  else
  {
    xDirection = xCurrent;
    yDirection = yCurrent;
  
  }
}