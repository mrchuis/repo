
class Person {
  String _firstName;
  String _lastName;
  String _phone;

  Person(this._firstName, this._lastName, this._phone);
  toString() {
    return "$_firstName $_lastName $_phone";
  }
}


void main(List<String> arguments) {
  List<Person> list = [
    Person("Mark", "Clow", "911"),
    Person("Alex", "Chuev", "9821"),
    Person("Anton", "Chuev", "8921")
  ];
  print("Not sorted: ${list}");

  list.sort((a,b) => a._firstName.compareTo(b._firstName));
  print("Sorted by firstname: ${list}");
  list.sort((a,b) => a._lastName.compareTo(b._lastName));
  print("Sorted by lastname: ${list}");
}