Alien allen;
Saucer saucy;
Octopus octo;
float xAl,yAl,girthAl,speedAl;
void setup() {
  size(800, 600);
  octo = new Octopus(width/3, height/2, 30);
  allen = new Alien(width/4*3, height/2, 30, 5);
  saucy = new Saucer(width/4*3, height/3, 15, color(0));
  background (0);
  fill(255);
  println("Avoid the Invasion!");
  saucy.display();
  delay(300);
}

void draw () {

  background (0);
  allen.display();
  octo.display(); 
  
  if (keyPressed) {
    octo.move();
    allen.walk();
  } else {
    octo.hover();
    allen.pace();

  }

  allen.display();
  octo.display();
}