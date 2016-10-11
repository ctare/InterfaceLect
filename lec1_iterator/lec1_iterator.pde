// 描画出来るものの集まり
Drawables drawables = new Drawables();

void setup(){
  size(200, 200);
}

void draw(){
  background(255);

  // 描画出来るものを描画
  for(Drawable d: drawables) d.draw();
}

void mousePressed(){
  // 左クリックで四角、右クリックで円を追加
  if(mouseButton == LEFT) drawables.add(new Ellipse(mouseX, mouseY));
  if(mouseButton == RIGHT) drawables.add(new Rect(mouseX, mouseY));
}
