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
    // 画面外に追い出すことで、四角を消す。
    this.x = width;
  }
}
