
void main(List<String> arguments) {
  print('start');
  List<Cadet> cadetList = [
    Cadet("Tom", 21),
    Cadet("Dick", 31),
    Cadet("Alis", 54),
    Cadet("Mark", 48)
  ];

  List<Cadet> validCadetList = [];
  for (Cadet cadet in cadetList) {
    try {
      validateCadet(cadet);
      validCadetList.add(cadet);
    } on TooOldForServiceExeption catch(ex) {
      print(ex);
    }
  }

  print('finish: ${validCadetList.length} of ${cadetList.length} cadets are valid.');
}

void validateCadet(Cadet cadet) {
  if (cadet.age > 45) {
    throw new TooOldForServiceExeption(cadet);
  }
}

class Cadet {
  String _name;
  int _age;

  Cadet(this._name, this._age);

  get age => _age;
  get name => _name;
}

class TooOldForServiceExeption implements Exception {
  Cadet _cadet;

  TooOldForServiceExeption(this._cadet);

  toString() {
    return "${_cadet.name} is too old to be in military service.";
  }
}



