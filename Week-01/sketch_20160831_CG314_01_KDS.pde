//setup function

void setup (){
  // Standard Def resolution
size (640,480);

//colored BG
background (0,230,230,50);
// fill ellipse w/ aqua color
fill (230,230,215,122);
ellipse (width/2,height/2,120 ,120);

}
void draw(){
  //create black boxes when mouse hovers over area within the window on loop
  fill(0);
rect (mouseX,mouseY,20,20);
}