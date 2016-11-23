//PImage myImage;

//void setup() {
//  myImage = loadImage("biden.jpg");
//  size(630, 354);
//}
//public void draw() {
//  loadPixels();
//  myImage.loadPixels();
//  for (int x = 0; x<width-3; x++) {
//    for (int y =0; y<height; y++) {
//      int theIndex = x + y * width;
//      int theIndex2 = x + 1 + y * width;
//      int theIndex3 = x + 2 + y*width;
//      //float b1 = brightness(myImage.pixels[theIndex]);
//      //float b2 = brightness(myImage.pixels[theIndex2]);
//      //float diff = abs(b1 - b2)
//      color tempColor = get (x, y);
//      pixels [theIndex]= color(tempColor);
//      pixels[theIndex] = color(tempColor);
//      pixels[theIndex2] = color(tempColor);
//      pixels[theIndex3] = color(tempColor);
//    }
//  }
//  updatePixels();
//  myImage.updatePixels();
//}

import processing.video.*;
Capture video;


void setup() {
  size(640, 480);
  video = new Capture(this, 640, 480);
  video.start();
}


void draw() {
  background(0);
  //image(video, 0, 0);
 loadPixels();
video.loadPixels();
    for (int x = 0; x<width; x++){
        for (int y=0; y<height; y++) {
            int theIndex = x + y * width;
            float r =red(video.pixels[theIndex]);
            float g = green(video.pixels[theIndex]);
            float b = blue(video.pixels[theIndex]);
            //pixels[theIndex] = color(r, g, b);
             pixels[theIndex] = color((r+g+b)/3);
        }
    }
updatePixels();
video.updatePixels();

}


void captureEvent(Capture video) {
  video.read();
}