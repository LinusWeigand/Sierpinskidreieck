public class Node extends TreeElement{
 private TreeElement child1, child2, child3;
 private Triangle oldTriangle;
 
  public Node(TreeElement ch1, TreeElement ch2, TreeElement ch3, Triangle old){
     child1 = ch1;
     child2 = ch2;
     child3 = ch3;
     oldTriangle = old;
  }
  
  public TreeElement addLayer(){
    child1 = child1.addLayer();
    child2 = child2.addLayer();
    child3 = child3.addLayer();
    return this;
  }
  
  public TreeElement removeLayer(int iteration){
    if(iteration == 0){
      return oldTriangle;
    }else{
     iteration--;
     child1 = child1.removeLayer(iteration);
     child2 = child2.removeLayer(iteration);
     child3 = child3.removeLayer(iteration);
     return this;
   }
  }
  
  
  public void draw(){
   child1.draw();
   child2.draw();
   child3.draw();
  }
}