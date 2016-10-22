class Octopus {
  int x;
  int y;
  int size;
  color theColor;
  float r, g, b;
  //tweak yDirection to effect the distance the octopus/squid bobs up and down
  //tyweak direction for the speed of movement with direction buttons
  int yDirection = 10;
  int direction = 5;

//used to initialize the x and y centers of main body and the diameter
  Octopus (int tempX, int tempY, int tSize) {
    x = tempX;
    y = tempY;
    size = tSize;
  }
  //makes the octopus be on display and strobe colors
  void display () {
    noStroke();
    rectMode(CENTER);
    theColor = color (random (1, 255), random (1, 255), random (1, 255));
    fill (theColor);
    ellipse (x, y, size, size);
    ellipse(x+size/2-3, y+size/2, 10, size);
    ellipse(x, y+size/2+5, 10, size);
    ellipse(x-size/2+3, y+size/2, 10, size);
    fill(0, 0, 0);
    ellipse (x, y, size/2, size/2);
    fill(theColor);
    ellipse (x, y, size/3, size/3);
    fill(0, 0, 0);
    ellipse (x, y, size/4, size/4);
    delay(25);
  }

  //creates a controller for the octopus using the "w,a,s,d" keys
  void move()
  {

    if (keyPressed && key=='w') {
      y+=-direction;
    } else if (keyPressed && key=='s') {
      y+=direction;
    } else if (keyPressed && key=='a') {
      x+=-direction;
    } else if (keyPressed && key=='d') {
      x+=direction;
    } 
    //these are the diagonal buttons
    else if (keyPressed && key=='q') {
      y+=-direction;
      x+=-direction;
    } else if (keyPressed && key=='e') {
      y+=-direction;
      x+=direction;
    } else if (keyPressed && key=='z') {
      y+=direction;
      x+=-direction;
    } else if (keyPressed && key=='c') {
      y+=direction;
      x+=direction;
    } else {
    }
  }
  
//hovers up and down slowly, if you want it quicker make delay a smaller number
  void hover() {

    if (yDirection<0||yDirection>0) {
      yDirection=-yDirection;
      delay(125);
      background(0);
    }
    y+=yDirection;
  }
}