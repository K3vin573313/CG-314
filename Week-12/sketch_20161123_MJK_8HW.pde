

float x, y, z;
float rotation = PI/48;
float direction = 5;
float distance;
float myHeight;


void setup() {
  size(800, 600, P3D); 
  x = width/2;
  y = height/2;
  z = 0;
  myHeight = height/2;
  distance = (height/2) / tan(PI/6);
}


void draw() {
  background(0);
  camera(width/2, myHeight, distance, width/2, height/2, 0, 0, 1, 0);


  float r = colorNew();
  float g = colorNew();
  float b = colorNew();
  lights();
  pushMatrix();
  translate(x, y, z);
  //rotateZ(mouseX/2);
  rotateY(mouseX/2);
  noFill();
  stroke (r, g, b);
  sphereDetail(50);
  sphere(250);
  fill(r,g,b);
  box (75);
  popMatrix();
  //if (z<0|| z>400)
  //{
  //  direction =-direction;
  //}
  //z+=direction;

  if (keyPressed ) { 
    if (key ==CODED) {
      if (keyCode == UP) {
       
        distance+=direction;}
      else if (keyCode == DOWN) { 
        distance-=direction;}
      else if (keyCode == LEFT) { 
        myHeight -=direction;}
      else if (keyCode == RIGHT) { 
        myHeight+=direction;
      }
    }
  }

  //directionalLight(r,g,b,0,-1,0);
  //translate(x,y,z);
  //rotateX(rotation);
  //rotateZ(mouseX/2);
  //rotateY(rotation);
  //rectMode(CENTER);
  //noFill();
  //stroke(250);
  //box(200);
  //rect(0,0,100,100);
  //rotation+= PI/48;
}

float colorNew() {
  return random(60, 250);
}