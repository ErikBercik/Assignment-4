class Cab {

  void drawCab() {

    rectMode(CORNER);

    /////////////CAB//////////////

    image(imgCab, -169 + (-457 + cameraPosX*1.2) + cameraShakeX, -20 + cameraShakeY);
  }
}
