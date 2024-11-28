Tracks tracks;

float sleeperPosX;

void setup() {
  size(400, 400);
  background(200, 220, 255);

  //horizon outline
  line(0, 80, width, 80);

  //tracks outline
  line(200, 80, 40, 400);
  line(200, 80, 360, 400);

  //sleepers outline
  rect(0, 320, width, 40);
  rect(0, 260, width, 30);
  rect(0, 180, width, 18);
  rect(0, 80, width, 2);
  rect(0, 140, width, 10);
  rect(0, 100, width, 4);

  map(sleeperPosX, 0, 400, 80, 400);

  sleeperPosX = 200;
  fill(100, 100, 100);
  rect(0, sleeperPosX, width, sleeperPosX*0.13 );
}
