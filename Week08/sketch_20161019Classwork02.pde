Octopus octo;
float r, g, b;
color setColor;
void setup () {
  size (800, 600);
  octo = new Octopus( width/2, height/2, 80);
}

void draw() {
  background (0);
  octo.display();
  if (keyPressed) {
    octo.move();
  } else {
    octo.hover();
  }

  octo.display();
}