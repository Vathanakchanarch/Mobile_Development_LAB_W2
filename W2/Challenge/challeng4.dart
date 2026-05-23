class Point {
  final int _x;
  final int _y;

  Point(this._x,this._y);

  String toString(){
    return "x:$_x , y:$_y";
  }

  Point translate(int dx,int dy){
      int x1= dx + _x;
      int y1= dy + _y;
      return Point(x1, y1);
    }
}
void main (){
  Point p1= Point(5, 5);
  print(p1);
  print(p1.translate(2,3));
}