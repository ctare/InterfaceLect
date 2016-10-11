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
    Ellipse e = new Ellipse(mouseX, mouseY);
    // 2分の1の確率で分岐 
    // Function_1, Function_2 が今回の肝。
    // Function_1には、y座標を足していく　Function_2には、y座標を引いていく処理が書いてある。
    if(random(2) < 1) e.set_function(new Function_1(e));
    else e.set_function(new Function_2(e));

    drawables.add(e);
  }
  if(mouseButton == RIGHT) drawables.add(new Rect(mouseX, mouseY));
}

void keyPressed(){
  for(Drawable d: drawables) if(d instanceof Deletable){
    ((Deletable)d).delete();
  }
}
