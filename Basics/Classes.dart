class Car {
  String engine = 'Alto';
  Car(String engine) {
    this.engine = engine;
  }
  Car.namedConst(String engine) {
    //Named Constructor
    this.engine = engine;
  }
  void setEngine(String engine) {
    this.engine = engine;
  }
}

void main() {
  Car p = new Car('Mazerrati');
  print(p.engine);
  p.setEngine('Chevrolet');
  print(p.engine);
  Car p0 = new Car.namedConst('Ferrari');
  print(p0.engine);
}
