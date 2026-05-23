class Point {
  int x;
  int y;

  Point(this.x,this.y);
  
  String toString(){
    return "x:$x, x:$y";
  }

  void translate(int dx,int dy){
    x+=dx;
    y+=dy;
  } 

}

 void main (){
  Point p1= Point(5, 8);
  p1.translate(1,2);
  print(p1);
}