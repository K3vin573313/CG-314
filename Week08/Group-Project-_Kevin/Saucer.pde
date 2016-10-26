class Saucer {
  float x;
  float y;
  float size;
  color theColor;

  Saucer(float tempX, float tempY, float tempSize, color tempColor) {
    x = tempX;
    y = tempY;
    size = tempSize;
    theColor = tempColor;
  }
  
  void move(){
    x+=2;
    
    if(x >width+size){
      x = -size;
    }
  }
  
  void hover() {
    x+=random(-1, 1);
    y+=random(-1, 1);
  }
  
 

  void display () {
    noStroke();
    fill(55);
    ellipse(x, y, size*3, size);
    fill(0,255,0);
    ellipse(x, y-57, size*1.4, size/2);
    fill(255,255,0);
    ellipse(x+205, y+10, size/5, size/5);
    ellipse(x+148, y+38, size/5, size/5);
    ellipse(x+76, y+50, size/5, size/5);
    ellipse(x-0, y+58, size/5, size/5);
    ellipse(x-76, y+50, size/5, size/5);
    ellipse(x-148, y+38, size/5, size/5);
    ellipse(x-205, y+10, size/5, size/5);
    
    
   
  }

}