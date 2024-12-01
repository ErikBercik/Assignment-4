class Rails {

  void drawRails() {

    /////////////RAILS//////////////

    //tracks outline
    //line(200, 80, 40, 400);
    //line(200, 80, 360, 400);

    //track tops
    fill(150);
    triangle(width/2, horizon, cameraPosX-200, 400, cameraPosX-215, 400); //L
    triangle(width/2, horizon, cameraPosX+50, 400, cameraPosX+65, 400); //R
    //track sides
    fill(120);
    triangle(width/2, horizon, cameraPosX-200, 400, cameraPosX-190, 400); //L
    triangle(width/2, horizon, cameraPosX+50, 400, cameraPosX+40, 400); //R
  }
}
