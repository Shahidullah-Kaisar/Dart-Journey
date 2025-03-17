
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

void main(){
  Car myCar = Car();
  Car yourCar = Car();

  myCar.color='red';
  myCar.speed=233.23;
  myCar.brand='Tyota';

  yourCar.color='green';
  yourCar.speed=253.23;
  yourCar.brand='Tyota pro';

  myCar.carInfo();
  myCar.start();
  myCar.stop();

  print('-------------------');
  
  yourCar.carInfo();
  yourCar.start();
  yourCar.stop();


}