class Printer {
  static final Printer _singleton = Printer._construct();
  factory Printer() => _singleton;

  Printer._construct() {
    print('private constructor');
  }

  printSomething(String text) {
    print(text);
  }
}

void main(List<String> arguments) {
  Printer().printSomething("this");
  Printer().printSomething("and");
  Printer().printSomething("that");
}

