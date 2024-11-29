import org.gicentre.handy.*;

HandyRenderer h;

Tracks tracks;

int horizon = 80;
float y1;
float sleeperPosY;
float mouseConstrainX;
float cameraPosX; //

void setup() {

  size(800, 400);
  frameRate(60);

  h = new HandyRenderer(this); //handy renderer

  //horizon outline
  line(0, 80, width, 80);

  tracks = new Tracks();
}

void draw() {

  //handy renderer
  h.setIsHandy(false);
  h.setRoughness(2);
  h.setFillGap(0.5);
  h.setFillWeight(1);

  mouseConstrainX = constrain(mouseX, 0, 400);
  cameraPosX = map(mouseConstrainX, 0, 400, width/2-20, width/2+20);

  //sky
  background(200, 220, 255);
  //ground
  fill(190, 195, 180);
  rect(0, horizon, width, height); //Base

  //sleepers
  tracks.drawSleepers();

  //grass
  fill(190, 195, 180);
  noStroke();
  quad(0, horizon, width/2, horizon, cameraPosX-250, height, 0, height); //L
  quad(width, horizon, width/2, horizon, cameraPosX+100, height, width, height); //R

  //rails
  tracks.drawRails();
}
