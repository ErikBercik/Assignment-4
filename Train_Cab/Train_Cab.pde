import org.gicentre.handy.*;

HandyRenderer h;

Rails rails;
Sleepers sleepers;
Cab cab;
Engine engine;

int horizon = 80;
float y1;
float sleeperPosY;
float mouseConstrainX;
float cameraPosX; //everything will be referenced on this
float trainSpeed;
float t = 0;
float cameraShakeX;
float cameraShakeY;
PImage imgCab;
PImage spriteSprite;
PVector velocity; //this will only be in y direction
PVector acceleration; //this will only be in y direction
boolean engineOn = false;
float gap;


Sleepers[] sleeperArray = new Sleepers[20];

void setup() {

  size(800, 400);
  frameRate(60);
  background(160, 200, 225);

  h = new HandyRenderer(this); //handy renderer

  //horizon outline
  line(0, 80, width, 80);

  rails = new Rails();
  //sleepers = new Sleepers(); //not needed
  cab = new Cab();
  imgCab = loadImage("Cab.png");
  spriteSprite = loadImage("Sprite.PNG");
  engine = new Engine();

  for (int i = 0; i < sleeperArray.length; i++) {
    //gap = (height-horizon)/(sleeperArray.length);
    gap = (gap+sleeperArray.length);
    sleeperArray[i] = new Sleepers(gap+gap);
  }
}

void draw() {

  //check to see what systems are running
  engine.drawEngine();
  engine.cameraShake();

  //handy renderer
  h.setIsHandy(false);
  h.setRoughness(10);
  h.setFillWeight(10);

  //this helps keep the operator in control when on the right side of the cab!
  mouseConstrainX = constrain(mouseX, 0, 400);
  cameraPosX = map(mouseConstrainX, 400, 0, width/2-20, width/2+20);

  //sky
  fill(160, 200, 225);
  h.rect(0, 0, width, 80);
  //ground
  fill(180, 165, 150);
  rect(0, horizon, width, height); //Base

  //sleepers
  //sleepers.drawSleepers();
  //sleepers.drawSingleSleeper();
  for (int i = 0; i < sleeperArray.length; i++) {
    sleeperArray[i].drawSingleSleeper();
  }

  //grass on the sides of the rail (thanks for the idea, it works much better, trapezoids suck, jk love them)
  fill(180, 165, 150);
  noStroke();
  //quad(0, horizon, width/2, horizon, cameraPosX-200, height, 0, height); //L
  //quad(width, horizon, width/2, horizon, cameraPosX+150, height, width, height); //R

  //rails
  rails.drawRails();

  //cab
  cab.drawCab();
}
