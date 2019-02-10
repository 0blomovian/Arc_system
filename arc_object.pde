

int count = 25;
float size = 30;
//float dynamic = size;
//float rotator = 0; /*kiertyminen radiaaneina. tätä kasvatetaan tasaisesti*/
float speed = .004;/*kiertymän muutos per tick*/
float pulse = 0;/*laskuri, joka ohjaa viivojen paksuuden muutoksia*/
//float sizer = 0;
PVector location = new PVector(0,0);
boolean b = false;
Arc[] arcs;
float multip;
ArrayList<ArcSys> systems;

void setup(){
  fullScreen();
  //size(800,800);
  strokeWeight(7);//1-14
  arcs = new Arc[count];
  //multip = map(sin(rotator),-1, 1, 1, 14 );
  systems = new ArrayList<ArcSys>();
  
  for(int i=0; i<arcs.length; i++){
    arcs[i] = new Arc(location.x, location.y, size*(i+1), size*(i+1), (14.0/count)*(i+1));
  }
}

void draw(){
  
  //dynamic = size + size*(sin(sizer)+1)/10;
  
  //translate(width/2, height/2);
  background(0);
  stroke(255);
  noFill();
  strokeCap(SQUARE);
  
  //rotator += speed;
  //sizer += speed*100;
  pulse += .05;  //viivanpaksuuden muutosnopeus
  
  if(systems.size()>0){
    for(ArcSys a : systems){
      a.display(pulse);
    }
  }
  
  /*
  for(int i=0; i<arcs.length; i++){
    Arc a = arcs[i];
    
    a.display(i,rotator, pulse);//rotaatiot aina kertautuu
  }
  //tallennussetti
  if(b){
    saveFrame("output/arc_####.jpg");
  }
  if(rotator >= 2*PI){
    b = !b;
  }
  */
}

void mouseClicked(){
    systems.add(new ArcSys(mouseX, mouseY));
  }
