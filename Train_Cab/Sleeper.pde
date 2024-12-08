class Sleeper {

  void drawSleeper(float yTop) {

    rectMode(CORNERS);

    yBottom = yTop*1.07;
    fill(130, 85, 60);
    rect(0, yTop + horizon, width, yBottom + horizon);
  }
}
