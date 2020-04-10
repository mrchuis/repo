void main(List<String> arguments) {
  Car car1 = Car("Nissan", model:"350Z", color:"red");
  Car car2 = Car("BMW", model:"X6");
  Car car3 = Car("Opel");
}

class Car {
  String make;
  String model;
  String color;
  Car(this.make, {this.model, this.color}) {
    print('${make}${getOptional(model)}${getOptional(color)}'); 
  }

  String getOptional(String str) {
    return str == null ? "" : "" + str;
  }
}