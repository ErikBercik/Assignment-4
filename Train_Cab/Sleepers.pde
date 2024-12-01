class Sleepers {

  void drawSleepers() {

    /////////////SLEEPERS//////////////

    rectMode(CORNER);

    //sleepers outline
    //rect(0, 320, width, 40);
    //rect(0, 260, width, 30);
    //rect(0, 180, width, 18);
    //rect(0, 80, width, 2);
    //rect(0, 140, width, 10);
    //rect(0, 100, width, 4);

    //sleeper width is based on distance to the cab vs horizon
    for (y1 = 0; y1 < height; y1 = (y1 + 1)*1.3) {
      fill(130, 85, 60);
      rect(0, sleeperPosY, width, y1*0.07);
      sleeperPosY = map(y1, 0, 400, horizon, 400);
    }
  }
}
