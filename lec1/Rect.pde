class Rect implements Drawable{
  float x, y;
  Rect(float x, float y){
    this.x = x;
    this.y = y;
  }

  @Override
  void draw(){
    rect(x, y, 20, 20);
  }
}
