import org.gicentre.handy.*;

HandyRenderer h;

Tracks tracks;

int horizon = 80;
float y1;
float sleeperPosY;
float mouseConstrainX;
float cameraPosX; //
float trainSpeed

void setup() {

  size(800, 400);
  frameRate(60);
  background(160, 200, 225);

  h = new HandyRenderer(this); //handy renderer

  //horizon outline
  line(0, 80, width, 80);

  tracks = new Tracks();
}

void draw() {

  //handy renderer
  h.setIsHandy(true);
  h.setRoughness(1);
  h.setFillWeight(5);

  mouseConstrainX = constrain(mouseX, 0, 400);
  cameraPosX = map(mouseConstrainX, 0, 400, width/2-20, width/2+20);

  //sky
  fill(160, 200, 225);
  h.rect(0, 0, width, 80);
  //ground
  fill(180, 165, 150);
  rect(0, horizon, width, height); //Base

  //sleepers
  tracks.drawSleepers();

  //grass
  fill(180, 165, 150);
  noStroke();
  quad(0, horizon, width/2, horizon, cameraPosX-250, height, 0, height); //L
  quad(width, horizon, width/2, horizon, cameraPosX+100, height, width, height); //R

  //rails
  tracks.drawRails();
}
