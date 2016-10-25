float Ax;
float Ay;
float spd;
float girth;
float speed;
float stompy;
boolean flip;
float xM;
float yM;
 
class alien{
  alien (float tX, float tY, float tGIRTH, float tSPD){
    girth=tGIRTH;
    spd= tSPD;
    Ax= tX;
    Ay= tY;
    stompy=0;
    flip=true;
  }
  void display(){
    fill(0,255,0);
    rect(Ax+xM+(girth/10), Ay+yM+(girth*2.5), girth/11, girth+stompy);
    rect(Ax+xM-(girth/10), Ay+yM+(girth*2.5), girth/11, girth+stompy);
    rect(Ax+xM, Ay+yM+(girth*1.05), girth*1.1, girth/8);
    rect(Ax+xM, Ay+yM+(girth*1.5), girth/5, girth);
    ellipse(Ax+xM, Ay+yM+(girth*.5), girth/2, girth);
    fill(0);
    ellipse(Ax+xM-girth/10, Ay+yM+(girth*.5), girth/8, girth/3);
    ellipse(Ax+xM+girth/10, Ay+yM+(girth*.5), girth/8, girth/3);
    line(Ax+xM-(girth/4),Ay+yM+(girth*.8), Ax+xM+(girth/4), Ay+yM+(girth*.8));    
  }
  
  void walk(){
    
    if(flip==true){
      stompy++;      
    }
    if(flip==false){
      stompy--;
    }
    if(stompy>girth/2){
      flip=false;
    }
    if(stompy<0){
      flip=true;
    }
      
  }
  
  void move(float tX, float tY){
    xM= tX;
    yM= tY;
  }
}