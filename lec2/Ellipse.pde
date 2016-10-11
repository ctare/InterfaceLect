class Ellipse implements Drawable{
  float x, y;
  Ellipse(float x, float y){
    this.x = x;
    this.y = y;
  }

  @Override
  void draw(){
    ellipse(x, y, 20, 20);
  }
}
