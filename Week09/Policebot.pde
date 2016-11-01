class Policebot {
  int x;
  int y;
  int yDirection = 200;
  int xDirection = 20;
  color blue = #08B3FF;
  color red = #FA0F17;
  color white =#FCFCFC;
  int road;

  //used to initialize the police bot
  Policebot(int tempX, int tempY) {
    x = tempX;
    y = tempY;
  }
  void display() {
    noStroke();
    rectMode(CENTER);
    fill(red);
    ellipse(x, y-50, 50, 50);
    fill(white);
    ellipse(x, y-50, 35, 35);
    fill(blue);
    ellipse(x, y-50, 30, 30);
    fill(red);
    ellipse(x, y+50, 50, 50);
    fill(white);
    ellipse(x, y+50, 35, 35);
    fill(blue);
    ellipse(x, y+50, 30, 30);
    fill(white);
    rect(x, y, 50, 100);
    fill(0);
    ellipse(x, y, 25, 50);
  }

  void move() {
    if (keyPressed && keyCode ==DOWN)
    {
      checkBounds(y);
      delay(200);
      y+=yDirection;
    } else if (keyPressed && keyCode ==UP)
    {
      checkBounds(y);
      delay(200);
      y+=-yDirection;
    }
  }
  private void checkBounds(int yer)
  {
    if (yer <= 75)
    {
      y=height+100;
    } else if (yer>=height-75) {

      y=-50;
    } else {
    }
  }
  public int getRoad() {
    if (y>=50&&y<250) {
      road = 1;
    } else if (y>=250 && y<450) {
      road = 2;
    } else if ( y>=450&&y<650)
    {
      road = 0;
    }
    return road;
  }
}