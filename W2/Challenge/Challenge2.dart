class Point {
  int x;
  int y;

  Point(this.x,this.y);}


class Rect{

  Point BottomRight; 
  Point TopLeft;

  Rect({required this.TopLeft,required this.BottomRight});

  

  int Width(){
    return BottomRight.x - TopLeft.x;
  }
  int height (){
    return TopLeft.y - BottomRight.y;
  }
  int area (){
    return height() * Width();
  }

}

void main(){
  Rect R1=Rect(TopLeft: Point(5,15),BottomRight: Point(15,5));
  int Width = R1.Width();
  int height = R1.height();
  int area = R1.area();
  print(Width);
  print(height);
  print(area);
}