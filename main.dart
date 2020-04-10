void main(List<String> arguments) {
  var point = Point(2,4);
  point.show();
}

class Point{
  num x, y;
  Point(num x, num y) {
  this.x = x;
  this.y = y;
  }
  show() {
    print("x = $x\ny = $y");
  }
}