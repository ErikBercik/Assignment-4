Tracks tracks;

int horizon = 80;
float sleeperPosX = 100;
float x1 = map(sleeperPosX, 0, 400, horizon, 400);


void setup() {
  size(800, 400);
  frameRate(60);
  //sky
  background(200, 220, 255);

  //ground
  fill(190, 195, 180);
  rect(0, horizon, width, height);

  //horizon outline
  line(0, 80, width, 80);

  tracks = new Tracks();
}

void draw() {

  tracks.drawSleepers();
  tracks.drawRails();
}
