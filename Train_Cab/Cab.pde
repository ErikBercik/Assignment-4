class Cab {

  void drawCab() {


    
    rectMode(CORNER);

    /////////////CAB//////////////

    image(imgCab, -169 + (-750 + cameraPosX*2) + cameraShakeX, -20 + cameraShakeY);
  }
}
