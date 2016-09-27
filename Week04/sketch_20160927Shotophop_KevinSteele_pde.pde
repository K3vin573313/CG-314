//button is an identifier for button pressed on screen by mouse
int button = 0 ;
//tint defines a color switch
int tint = 0;
PFont ariale;
 int a = 75;
int  b=80;
PImage helmet;

//Establish a 16:9 aspect ratio for window, color white
void setup() {
  size (1600, 900);
  stroke(50);
  ariale = createFont("Arial",16,true);
  background(255);
  smooth();
  helmet = loadImage("side-helmet.png");
}

//ascertains if mouse coordinates are within a boundary
boolean boundaryTruth(int ab, int bc, int cd, int ef) {
  boolean truth;
  if (mouseX>ab && mouseX<bc && mouseY>cd && mouseY<ef)
  {
    return true;
  } else {
    return false;
  }
}

//void setMycolor(int choice){
//if (choice ==0){
//  //fill(0,0,0);  
//}
//}

void draw() {
  fill (255);
  //int a, b;
  //a= 75;
  //b=80;
  float randomShake;

  rect (a, a, b, b);
  rect(a, 2*a+b, b, b);
  rect(a, 3*a+2*b, b, b);
  rect(a, 4*a+3*b, b, b);
  rect(a, 5*a+4*b, b, b);
  rect (width-2*a, a, b,b);
  
  
  
//this makes the mouse hover over buttons that 
  if (boundaryTruth(a, a+b, b, 2*b)) {
    fill(255, 0, 0);  
    rect (a, a, b, b);
    button = 1;
    println("Pencil Tool");
    text("Pencil",b,b-10);
    
  } 
  else if (boundaryTruth(a, a+b, 2*a+b, 2*a+2*b)) {
    fill(255, 0, 0);  
    rect(a, 2*a+b, b, b);
    button =2;
    println("Block Stamp");
    text("Block Stamp",b,2*a+b-10);
  }
  else if (boundaryTruth(a, a+b, 3*a+2*b, 3*a+3*b)) {
    fill(255, 0, 0);  
    rect(a, 3*a+2*b, b, b);
    button =3;
    println("Airbrush");
    text ("Airbrush", b, 3*a+2*b-10);
  }
  else if (boundaryTruth(a, a+b, 4*a+3*b, 4*a+4*b)) {
    fill(255, 0, 0);  
    rect(a, 4*a+3*b, b, b);
    button =4;
    println("Eraser");
    text("Eraser", b, 4*a+3*b-10);
  }
  else if (boundaryTruth(a, a+b, 5*a+4*b, 5*a+5*b)) {
    fill(255, 0, 0);  
    rect(a, 5*a+4*b, b, b);
    button = 5;
    println("Clear Window");
    text ("Clear Window", b, 5*a+4*b-10);
  }
  else if (boundaryTruth(width-2*a,(width-2*a)+b,b,2*b )) {
    fill(255, 0, 0);  
    rect (width-2*a, a, b,b);
    button = 6;
    println("Load Picture");
    text ("Load Picture", width-2*a,a-5 );
  }
  else {
    fill(255);
  }
  //pencil tool
  if (button == 1 && mousePressed)
  {
    
    fill(20);
    line(mouseX, mouseY, pmouseX, pmouseY);
  }
  
  //creates blocks
  else if (button ==2 && mousePressed){
    fill(50);
    stroke(50);
    rect(mouseX,mouseY,30,30);
  }
  //airbrush
  else if (button ==3 && mousePressed){
    stroke(50);
    fill(50);
    randomShake = random(-10,10);
    vertex(mouseX+randomShake,mouseY+randomShake,2,2);
    ellipse(pmouseX+randomShake,pmouseY+randomShake,2,2);
    ellipse(pmouseX+2*randomShake,pmouseY+2*randomShake,2,2);
    ellipse(pmouseX+3*randomShake,pmouseY+3*randomShake,2,2);
  }
  //eraser
  else if (button ==4 && mousePressed){
    stroke(255);
    fill(255);
    ellipse(mouseX,mouseY,45,45);
    ellipse(mouseX-5,mouseY,45,45);
  }
  //clear canvas button
  else if (button == 5 && mousePressed)
  {
    clear();
    background (255);
  }
  //load picture
  else if (button == 6 && mousePressed)
  {
    image (helmet, 100, 100, mouseX,mouseY);
  }
  stroke(0);
  
}