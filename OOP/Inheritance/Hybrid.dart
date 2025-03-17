/*In Dart, hybrid inheritance refers to a combination of multiple types of inheritance. Dart supports single inheritance (one class can inherit from another) and mixins (a way to add functionality to a class without using inheritance), but it does not support multiple inheritance (where one class inherits from more than one class directly).

However, you can mimic hybrid inheritance by using both inheritance and mixins together. Here's an example:

*/

// Base class 1
class Animal {
  void breathe() {
    print('Breathing...');
  }
}

//  Mixin 1
mixin Mammal {
  void walk() {
    print('Walking...');
  }
}

// Mixin 2
mixin Swimmer {
  void swim() {
    print('Swimming...');
  }
}

// Derived class using inheritance and mixin (Hybrid Inheritance)
class Dolphin extends Animal with Mammal, Swimmer {
  void display() {
    print('I am a Dolphin.');
  }
}

void main() {
  Dolphin dolphin = Dolphin();
  dolphin.display();  
  dolphin.breathe();  
  dolphin.walk();     
  dolphin.swim();     
}

/*
Explanation:
Animal and Mammal are base classes.
The Swimmer mixin is added to the Dolphin class.
The Dolphin class inherits from Animal and mixes in Mammal and Swimmer, combining the features of both inheritance and mixins, which is a form of hybrid inheritance in Dart.
This approach allows you to use the functionality of multiple sources in a single class.
*/