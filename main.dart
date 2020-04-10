void main(List<String> arguments) {
  var point = Point(4,6);
  point.show();
  hello('Anton');
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

hello(name) {
  print('Hello, $name');
}