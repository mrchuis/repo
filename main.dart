void main(List<String> arguments) {
  var point = Point(5,5);
  point.show();
}

class Point{
  num x, y;
  Point(this.x, this.y);
  Point.origin() {
    x = 0;
    y = 0;
  }
  show() {
    print("x = $x\ny = $y");
  }
}