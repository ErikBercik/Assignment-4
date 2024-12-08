class Cab {
  
  void drawCab() {

    /////////////CAB//////////////

    //window left
    fill(205, 255, 205, 40);
    triangle(cameraPosX*2 -850 + cameraShakeX, 50 + cameraShakeY, cameraPosX*2 -800 + cameraShakeX, 400 + cameraShakeY, cameraPosX*2 -850 + cameraShakeX, 400 + cameraShakeY);

    //window right
    fill(105, 135, 105, 30);
    triangle(cameraPosX*2 + 50 + cameraShakeX, -250 + cameraShakeY, cameraPosX*2 -100 + cameraShakeX, 400 + cameraShakeY, cameraPosX*2 + 60 + cameraShakeX, 400 + cameraShakeY);

    //cab Background
    image(imgCab, -169 + (-770 + cameraPosX*2) + cameraShakeX, -20 + cameraShakeY);

    //on/off button - i ended up just using this to inform the position of the interactible area for the mouse click
    //rectMode(CORNERS);
    //fill(255, 255, 255, 50);
    //quad(buttonX, buttonY, buttonX+60, buttonY, buttonX+60, buttonY+25, buttonX, buttonY+25);
  }
}
