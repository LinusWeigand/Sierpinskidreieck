SierpinskiTriangle triangle;

int iteration = 0;
void setup(){
  triangle = new SierpinskiTriangle();
  size(600, 600);
}

void draw(){
  background(100,100,200);
  triangle.draw();
  fill(color(0));
  textSize(16);
  text("Iteration: "+iteration, 50, 50);
  text("Drücke die + Taste", 50, 70);
}

void keyReleased(){
  
  println(keyCode);
  //if(iteration < 12){
  //  //107 = +
  //  if(keyCode == 107){
  //    triangle.addLayer();
  //    iteration++;
  //    //109 = -
  //  }else if(keyCode == 109 && iteration > 0){
  //    iteration--;
  //    triangle.removeLayer(iteration);
  //  }
  //}
  switch(keyCode){
    
    case 107:
    if(iteration < 12){
    triangle.addLayer();
    iteration++;
    break;
    }
    
    case 521:
    if(iteration < 12){
    triangle.addLayer();
    iteration++;
    break;
    }
    
    case 109:
    if(iteration > 0){
      iteration--;
      triangle.removeLayer(iteration);
      break;
    }
    
    case 45:
    if(iteration > 0){
      iteration--;
      triangle.removeLayer(iteration);
      break;
    }
  }
  
  
  
}
