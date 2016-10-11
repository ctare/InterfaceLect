class Ellipse implements Drawable{
  float x, y;
  Function function;
  Ellipse(float x, float y){
    this.x = x;
    this.y = y;
  }

  // 関数を引数に取る
  void set_function(Function function){
    this.function = function;
  }

  @Override
  void draw(){
    ellipse(x, y, 20, 20);

    // 関数が定義されていたら呼び出す
    if(function != null) function.call();
  }
}
