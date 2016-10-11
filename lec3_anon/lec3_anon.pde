ArrayList<Drawable> drawables = new ArrayList<Drawable>();

void setup(){
  size(200, 200);
}

void draw(){
  background(255);

  for(Drawable d: drawables) d.draw();
}

void mousePressed(){
  if(mouseButton == LEFT){
    // 匿名クラスの中から直接呼ぶため、finalにする必要がある
    final Ellipse e = new Ellipse(mouseX, mouseY);
    // 2分の1の確率で分岐 
    // 片方には、y座標を足していく　もう片方には、y座標を引いていく処理が書いてある。
    //
    // new ClassName() のあとに、{}を書くと匿名クラスになる。
    // {}の中は、普通のクラスの定義と同じように書いていく事が出来る。
    if(random(2) < 1) e.set_function(new Function(){
      // Function_1にあった内容をほぼそのまま持ってきた
      // コンストラクタは定義できない
      Ellipse target = e;

      // ここが渡したい関数
      @Override
      public void call(){
        target.y += 1;
      }
    });
    else e.set_function(new Function(){
      // 上と同じ
      Ellipse target = e;

      // ここが渡したい関数
      @Override
      public void call(){
        target.y -= 1;
      }
    });

    drawables.add(e);
  }
  if(mouseButton == RIGHT) drawables.add(new Rect(mouseX, mouseY));
}

void keyPressed(){
  for(Drawable d: drawables) if(d instanceof Deletable){
    ((Deletable)d).delete();
  }
}
