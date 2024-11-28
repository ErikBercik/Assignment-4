Tracks tracks;

float sleeperPosX = 300;


void setup() {
  size(800, 400);
  frameRate(60);
  background(200, 220, 255);

  //horizon outline
  line(0, 80, width, 80);

}

void draw() {
  
   /////////////SLEEPERS//////////////

  rectMode(CORNER);

  //sleepers outline
  //rect(0, 320, width, 40);
  //rect(0, 260, width, 30);
  //rect(0, 180, width, 18);
  //rect(0, 80, width, 2);
  //rect(0, 140, width, 10);
  //rect(0, 100, width, 4);

  fill(100, 100, 100);
  float x1 = map(sleeperPosX, 0, 400, 80, 400);
  rect(0, x1, width, sleeperPosX*0.13 );

  /////////////RAILS//////////////

  //tracks outline
  //line(200, 80, 40, 400);
  //line(200, 80, 360, 400);

  //track tops
  fill(150);
  triangle(width/2, 80, width/2-200, 400, width/2-215, 400); //L
  triangle(width/2, 80, width/2+100, 400, width/2+115, 400); //R
  //track sides
  fill(120);
  triangle(width/2, 80, width/2-200, 400, width/2-190, 400); //L
  triangle(width/2, 80, width/2+100, 400, width/2+90, 400); //R
}
 
