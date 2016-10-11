ArrayList<Drawable> drawables = new ArrayList<Drawable>();

void setup(){
  size(200, 200);
}

void draw(){
  background(255);

  for(Drawable d: drawables) d.draw();
}

void mousePressed(){
  if(mouseButton == LEFT) drawables.add(new Ellipse(mouseX, mouseY));
  if(mouseButton == RIGHT) drawables.add(new Rect(mouseX, mouseY));
}

void keyPressed(){
  // dはdelete可能か？
  for(Drawable d: drawables) if(d instanceof Deletable){
    // delete可能だった場合の処理
    //
    // dをDeletableにキャストする。delete出来るみたいなので、deleteメソッドを呼んでみる。
    ((Deletable)d).delete();
  }
}
