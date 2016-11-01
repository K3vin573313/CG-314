import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim m;
AudioPlayer carPlayer;
PFont pixel;
Policebot popo;
Cars car1;
int lives = 5;
boolean caught;

void setup() {
  size(800, 650);
  background(0);
  m = new Minim(this);
  carPlayer = m.loadFile("carOrig.wav", 1024);
  pixel = createFont("LLPIXEL3.ttf", 30);
  popo = new Policebot(75, 150);
  car1=new Cars(int(random(1, 9)));
}

void draw() {

  bg();

  popo.display();
  car1.display();
  //carPlayer.play();
  if (keyPressed) {
    popo.move();
  } else {
  }

  popo.display();
  car1.vroom();

  //scoreKeeper

  if (car1.getX()<125) {

    if (car1.getRoad()==popo.getRoad())
    {
      caught = true;
    } else {
      caught = false;
    }
    if (caught==true) {
      lives+=1;
    } else if (caught==false) {
      lives-=1;
    }
  }

  //cycles cars
  if (car1.getX()<0 && caught ==false)
  {
    car1= new Cars(int(random(1, 9)));
  }

  if (lives == 0)
  {
    background(255);
    textSize(60);
    text("YOU LOSE", 275, 325);
    delay(500);
    noLoop();
  }
  //m.stop();
}

//generates background pieces/elements
void bg() {
  background(0);
  //lanes
  stroke(255);
  strokeWeight(5);
  line(0, 250, 800, 250);
  stroke(255);
  strokeWeight(5);
  line(0, 450, 800, 450);
  line(150, 50, 150, 800);
  //scoreboard
  fill(255);
  rect(710, 40, 100, 49);
  fill(0);
  textSize(15);
  text(lives+" Lives Left", 670, 30);
  fill(255);
  noFill();
  stroke(random (1, 255), random (1, 255), random (1, 255));
  strokeWeight(15);
  rect(width/2,height/2,800,650);

  ////Debug display to see if the policebot and car are on the same road
  //textSize(15);
  //text(car1.getRoad()+" Car Road", 675, 50);
  //textSize(15);
  //text(popo.getRoad()+" police Road", 675, 100);
}

//Note: I could not get the sound to work for the life of me