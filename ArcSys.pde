import java.util.Random;

class ArcSys{
  Arc[] arcs;
  Random r = new Random();
  PVector location;
  float rotator = 0;
  float speed;
  
  public ArcSys(float x, float y){
    arcs = new Arc[r.nextInt(10)+2];
    location = new PVector(x,y);
    speed = random(.001, .005);
    
    /*luodaan uudet arcit arrayyn. xcoord, ycoord, xsize, ysize, viivanpaksuus alussa*/
    for(int i=0; i<arcs.length; i++){
      arcs[i] = new Arc(0, 0, size*(i+1), size*(i+1), (14.0/arcs.length)*(i+1));//14.0 = max viivanpaksuus
    }
  }
  
  public void display(float pulse){
    this.rotator += speed;
    pushMatrix();
    translate(location.x, location.y);
    for(int i=0; i<arcs.length; i++){
      Arc a = arcs[i];
    
      a.display(i,this.rotator, pulse);//rotaatiot kasvaa kaaresta kaareen
    }
    popMatrix();
  }
}
