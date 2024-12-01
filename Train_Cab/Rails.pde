class Rails {

  void drawRails() {

    /////////////RAILS//////////////

    //tracks outline
    //line(200, 80, 40, 400);
    //line(200, 80, 360, 400);

    //track tops
    fill(150);
    triangle(width/2, horizon, cameraPosX-150, 400, cameraPosX-165, 400); //L
    triangle(width/2, horizon, cameraPosX+100, 400, cameraPosX+115, 400); //R
    //track sides
    fill(120);
    triangle(width/2, horizon, cameraPosX-150, 400, cameraPosX-140, 400); //L
    fill(190);
    triangle(width/2, horizon, cameraPosX+100, 400, cameraPosX+90, 400); //R
  }
}
