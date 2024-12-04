class Engine {

  void cameraShake() {

    //camera shake
    if (engineOn == true) { //only shake when the train is moving
      cameraShakeX = map(2*sin(noise(t)), -1, 1, -2, 2);  //i thought this was shaking too much so it's been altered
      cameraShakeY = map(sin(noise(t)), -1, 1, -3, 3);
      t += 0.05;
    }
  }

  //how do I know when to turn on the engine? Well...

  void drawEngine() {

    if (mousePressed == true) {
      engineOn = true;
    } else if (keyPressed == true) {
      engineOn = false;
    }
  }
}
