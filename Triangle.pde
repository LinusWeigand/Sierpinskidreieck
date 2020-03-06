public class Triangle extends TreeElement{
  private Point2D a, b, c;//a ist oben, b ist unten rechts, c ist unten links
  
  public Triangle(Point2D x, Point2D y, Point2D z){
    a = x;
    b = y;
    c = z;
  }
  
  public TreeElement addLayer(){
    //neue Vektoren erzeugen
    Vector2D ab, bc, ca;
    ab = new Vector2D(a, b);
    bc = new Vector2D(b, c);
    ca = new Vector2D(c, a);
    //Skalieren mit 0.5f
    ab = ab.scaleVector(0.5f);
    bc = bc.scaleVector(0.5f);
    ca = ca.scaleVector(0.5f);
    Point2D mittelAB, mittelBC, mittelCA;
    mittelAB = a.movePoint(ab);
    mittelBC = b.movePoint(bc);
    mittelCA = c.movePoint(ca);
    //Dreiecke erzeugen
    Triangle ch1, ch2, ch3;
    ch1 = new Triangle(a, mittelAB, mittelCA);//oberes Dreieck
    ch2 = new Triangle(mittelAB, b, mittelBC);
    ch3 = new Triangle(mittelCA, mittelBC, c);
    return new Node(ch1,ch2, ch3, this);//konstruiere neue Node mit drei kleinen Dreiecken
  }
  
  public TreeElement removeLayer(int iteration){
    return null;//sollte nicht aufgerufen werden
  }
  
  public Point2D[] getPoints(){
    return null;
  }
  
  public void draw(){
    fill(0);
    noStroke();
    triangle(a.getX(), a.getY(), b.getX(), b.getY(), c.getX(), c.getY());
  }
  
}