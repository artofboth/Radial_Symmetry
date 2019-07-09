Polygon polygon;

int npoints =7;
int levels =5;

void keyPressed() {
 if (keyCode == ENTER) {
 saveFrame("screen-####.png");
 }
}

void setup() {
  
  polygon = new Polygon();
  size(800, 800);
  noFill();
 
    
}

void draw(){
  
  background(230, 220, 220);
  
  
  /*for(float angle=0; angle < 360; angle+=45){*/
    pushMatrix();
    
    translate(width*0.5, height*0.5);
    rotate(radians(270));
    
    for (int i=1; i<=levels; i++){
      polygon .display(i);
      polygon.plot(i);
    };
    
    popMatrix();
  //}
}
