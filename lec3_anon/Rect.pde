class Rect implements Drawable, Deletable{
  float x, y;
  Rect(float x, float y){
    this.x = x;
    this.y = y;
  }

  @Override
  void draw(){
    rect(x, y, 20, 20);
  }

  void delete(){
    this.x = width;
  }
}
