public class Point2D{
 private float x,y;
 
 public Point2D(float x, float y){
   this.x = x;
   this.y = y;
 }
 public Point2D movePoint(Vector2D vector){
    return new Point2D(x + vector.getX(), y + vector.getY());
 }
 public float getX(){
   return x;
 }
 public float getY(){
   return y;
 }
}