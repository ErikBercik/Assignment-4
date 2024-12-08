//import org.gicentre.handy.*;
import processing.sound.*;

//HandyRenderer h;
SoundFile trainNoise;

Rails rails;
Sleepers sleepers;
Cab cab;
Engine engine;
Sleeper sleeper;

float horizon = 80.0;
float y1;
float sleeperPosY;
float mouseConstrainX;
float cameraPosX; //everything will be referenced on this
float trainSpeed;
float t = 0;
float gap;
float cameraShakeX;
float cameraShakeY;
float yTop;
float yBottom;
float buttonX = 525.0;
float buttonY = 362.0;

PImage imgCab;
PImage spriteSprite;
PImage imgMenu;

PVector velocity; //this will only be in y direction
PVector acceleration; //this will be acceleration in y direction

boolean engineOn = false;
boolean buttonOn = false;
boolean drawTrain = false;

Sleeper[] sleeperArray = new Sleeper[20];

/////////////SETUP//////////////

void setup() {

  size(800, 400);
  frameRate(60);
  background(160, 200, 225);

  //  h = new HandyRenderer(this); //handy renderer

  trainNoise = new SoundFile(this, "trainnoise.wav"); //from https://pixabay.com/sound-effects/search/train/

  //horizon outline
  line(0, 80, width, 80);

  rails = new Rails();
  //sleepers = new Sleepers(); //not needed
  cab = new Cab();
  imgCab = loadImage("Cab.png");
  spriteSprite = loadImage("Sprite.PNG");
  imgMenu = loadImage("Menu.png");
  //sleeper = new Sleeper();

  velocity = new PVector(0, 1);
  acceleration = new PVector(0, 2);

  engine = new Engine();

  for (int i = 0; i < sleeperArray.length; i++) {
    sleeperArray[i] = new Sleeper();
  }
}

void draw() {



  if (drawTrain == false) {
    drawMenu();
  } else {
    drawTrain();
  }
  if (drawTrain == true && engineOn == true) {
    acceleration.y = pow(acceleration.y, 1.1);
    velocity.y = velocity.y + acceleration.y;
    trainNoise.play();
  }
}

/////////////INPUTS//////////////

//this is the code to toggle the menu or train
void keyPressed() {

  if (keyCode == TAB) {
    drawTrain = !drawTrain;
  }
}

//this is the code to drive the train
void mousePressed() {

  if (mouseX > buttonX && mouseX < buttonX+60 && mouseY > buttonY && mouseY < buttonY+25) {
    buttonOn = !buttonOn;
  }
}

/////////////THE CODE//////////////

//this is the code to make sure the train is being drawn
void drawTrain() {

  rectMode(CORNERS);

  //check to see what systems are running
  engine.drawEngine();
  engine.cameraShake();

  //handy renderer
  //  h.setIsHandy(false);
  //  h.setRoughness(10);
  //  h.setFillWeight(10);

  //this helps keep the operator in control when on the right side of the cab!
  mouseConstrainX = constrain(mouseX, 0, 400);
  cameraPosX = map(mouseConstrainX, 400, 0, width/2-20, width/2+20);

  //ground
  fill(180, 165, 150);
  rect(0, horizon, width, height); //Base

  //sleepers
  //sleepers.drawSleepers();
  //sleepers.drawSingleSleeper();
  //for (int i = 0; i < sleeperArray.length; i++) {
  //   sleeperArray[i].drawSleepers();
  // }
  //sleepers.drawSleepers();

  for (int i = 0; i < sleeperArray.length; i++) {
    sleeperArray[i].drawSleeper(velocity.y);
  }

  //sky
  fill(160, 200, 225);
  rect(0, 0, width, 80);

  //grass on the sides of the rail (thanks for the idea, it works much better, trapezoids suck, jk love them)
  fill(180, 165, 150);
  noStroke();
  quad(0, horizon, width/2, horizon, cameraPosX-200, height, 0, height); //L
  quad(width, horizon, width/2, horizon, cameraPosX+150, height, width, height); //R

  //rails
  rails.drawRails();

  //cab
  cab.drawCab();
}
