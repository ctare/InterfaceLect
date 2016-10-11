class Function_2 implements Function{
  Ellipse target;
  Function_2(Ellipse target){
    this.target = target;
  }

  // ここが渡したい関数
  @Override
  void call(){
    target.y -= 1;
  }
}
