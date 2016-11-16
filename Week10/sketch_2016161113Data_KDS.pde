float [] rowz;

void setup(){
  size (480,120);
  Table stats = loadTable("VoterTurnout.csv");
  rowz = new float [stats.getRowCount()];
  
  for (int i =0; i<stats.getRowCount(); i++){
    rowz[i] = stats.getFloat(i,1);
  }
  
  for (int i = 0; i<15; i++){
    float year = stats.getFloat(i,0);
    float votePerc = stats.getFloat(i,1);
    println("In the year "+ int(year)+" voter turn out was " +votePerc+"%!");
   println(i);
    
  }

}

void draw () {
  background(0);
  stroke(250,0,0);
  noFill();

  beginShape();
  for (int i = 0;i<rowz.length-1;i++) {
    float x = map (i,0,rowz.length-1,20,460);
    float y = map (rowz[i],49 ,62.8,100,20);
    vertex(x,y);
  }
  endShape();
  
}