public class SierpinskiTriangle{
  private TreeElement root;
  
  
  public SierpinskiTriangle(){
    root = new Triangle(new Point2D(300, 154), new Point2D(500, 500), new Point2D(100, 500));
  }
  
  
  public void addLayer(){
    long start = System.currentTimeMillis();
    root = root.addLayer();
    println("New Layer added in " + (System.currentTimeMillis() - start) + " ms.");
  }
  public void removeLayer(int iteration){
    root = root.removeLayer(iteration);
  }
  
  public void draw(){
    root.draw();
  }
}