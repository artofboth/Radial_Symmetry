class Polygon {
  
  Polygon(){
   strokeWeight(5);
   
  }
  
  float x = 0;
  float y = 0;
  
  float a(int pos){
    float angle = TWO_PI / npoints;
    float a = 0;
    a += angle*pos;
    return a;
  }
  
  int radius(int size)
  {
    int radius = 0;
    radius = (width/10) * size;
    return radius;
  }

  float sx (int pos, int radius)
  {
    float sx = x + cos(a(pos)) * radius;
    return sx;
  }
  
  float sy (int pos, int radius)
  {
    float sy = y + sin(a(pos)) * radius;
    return sy;
  }
  
  void display(int size)
  {
    int radius = 0;
    radius = (width/10) * size;
    
    beginShape();
    for (int i = 0; i<npoints; i++)
    {
      vertex(sx(i, radius), sy(i, radius));
    }
    endShape(CLOSE);

  }
  
 //creaing connecting lines between polygons vertices, across the centre. 
 void plot(int size) {
  
    int radius = 0;
    radius = (width/10) * size;
  
  beginShape();
  for (int i = 0; i<npoints; i++)
    {
      int endpoint=0;
      
      if (npoints>3){
        endpoint = i +(npoints/2);
        line(sx(i, radius), sy (i, radius), sx(endpoint, radius), sy(endpoint, radius));
      }
      
      //creating an exception for triangles, which link lines to the centre of the canvas. 
      else if (npoints==3){
       line(sx(i, radius), sy (i, radius), x, y);
      }
    }
  endShape(CLOSE);

}
  
}
