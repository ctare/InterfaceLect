import java.util.Iterator;
import java.util.ArrayList;

public class Drawables implements Iterator<Drawable>, Iterable<Drawable>{
  private ArrayList<Drawable> drawables = new ArrayList<>();
  private int target;

  public void add(Drawable d){
    drawables.add(d);
  }

  // Iterable(Aggregateに相当)のメソッド
  @Override
  public Drawables iterator(){
    target = 0;
    return this;
  }

  // Iteratorのメソッド
  @Override
  public boolean hasNext(){
    return target < drawables.size();
  }

  @Override
  public Drawable next(){
    return drawables.get(target++);
  }
}
