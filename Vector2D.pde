public class Vector2D{
  private float x, y;
  
  public Vector2D(float x, float y){
    this.x = x;
    this.y = y;
  }
  
  public Vector2D(Point2D a, Point2D b){
     //von a nach b
     x = b.getX() - a.getX();
     y = b.getY() - a.getY();
  }
  
  public Vector2D scaleVector(float scaleFactor){
    return new Vector2D(scaleFactor * x, scaleFactor * y);
  }
  
  public float getX(){
    return x;
  }
  
  public float getY(){
    return y;
  }
}