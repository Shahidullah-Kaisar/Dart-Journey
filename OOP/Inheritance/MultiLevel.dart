class Vehicle {
   String? color;
   double? speed;

  void start(){
    print('Vehicle Start');
  }

  void stop(){
    print('Vehicle stopped');
  }
}

class Car extends Vehicle{
    String? brand;

  void carInfo(){
    print('Color: $color');
    print('Speed: $speed');
    print('Brand: $brand');
  }
}

class Bus extends Car {
  int? seat;

  void BusInfo(){
    print('No of Seat: $seat');
  }
}

void main(){
  Car myCar = Car();
  Car yourCar = Car();
  Bus bus = Bus();

  myCar.color='red';
  myCar.speed=233.23;
  myCar.brand='Tyota';

  yourCar.color='green';
  yourCar.speed=253.23;
  yourCar.brand='Tyota pro';

  bus.color='Yellow';
  bus.speed=200.23;
  bus.brand='Volvo';
  bus.seat = 40;

  myCar.carInfo();
  myCar.start();
  myCar.stop();

  print('-------------------');
  
  yourCar.carInfo();
  yourCar.start();
  yourCar.stop();

  print('-------------------');

  bus.carInfo();
  bus.BusInfo();
  bus.start();
  bus.stop();

}