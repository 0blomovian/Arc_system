class Arc{

  float xCoord;
  float yCoord;
  float sizeX;
  float sizeY;
  float arcEnd = 2*PI*.8;//== 80% koko kaaresta -> 20% gappi
  float lineW;
  
  public Arc(float x, float y, float sizeX, float sizeY, float lw){
    xCoord = x;
    yCoord = y;
    this.sizeX = sizeX;
    this.sizeY = sizeY;
    lineW = lw;
  }
  
  public void display(int i, float rotation, float pulse){
    pushMatrix();
    rotate(rotation*(i+1));//i+1 ettei tarvi tämän ulkopuolella ottaa huomioon i==0 tilannetta
    strokeWeight(map(sin(pulse-lineW), -1, 1, 1, 14));
    arc(0, 0, sizeX, sizeY,0, arcEnd); //xcoord, ycoord, sizex, sizey, start, stop(,mode)
    popMatrix();
  }

}
