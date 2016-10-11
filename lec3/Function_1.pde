class Function_1 implements Function{
  Ellipse target;
  Function_1(Ellipse target){
    this.target = target;
  }

  // ここが渡したい関数
  @Override
  void call(){
    target.y += 1;
  }
}
