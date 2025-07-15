class Car {
  String carId = 100.toString();
}
class Engine implements Car{
  @override
  String carId=200.toString();
}

class Bike implements Car, Engine {
  @override
  String carId = 300.toString();
}