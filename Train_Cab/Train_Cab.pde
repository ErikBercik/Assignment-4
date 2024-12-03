import org.gicentre.handy.*;

HandyRenderer h;

Rails rails;
Sleepers sleepers;
Cab cab;

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
PVector velocity;
PVector acceleration; 
boolean engineOn = false;

void setup() {

  size(800, 400);
  frameRate(60);
  background(160, 200, 225);

  h = new HandyRenderer(this); //handy renderer

  //horizon outline
  line(0, 80, width, 80);

  rails = new Rails();
  sleepers = new Sleepers();
  cab = new Cab();
  imgCab = loadImage("Cab.png");
  spriteSprite = loadImage("Sprite.PNG");
}

void draw() {
  
  //camera shake
  if(engineOn == true){
  cameraShakeX = map(2*sin(noise(t)), -1, 1, -2, 2);  //i thought this was shaking too much so it's been commented out
  cameraShakeY = map(sin(noise(t)), -1, 1, -3, 3);
  t += 0.05;
  }

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
  sleepers.drawSleepers();

  //grass on the sides of the rail (thanks for the idea, it works much better)
  fill(180, 165, 150);
  noStroke();
  //quad(0, horizon, width/2, horizon, cameraPosX-200, height, 0, height); //L
  //quad(width, horizon, width/2, horizon, cameraPosX+150, height, width, height); //R

  //rails
  rails.drawRails();

  //cab
  cab.drawCab();
}
