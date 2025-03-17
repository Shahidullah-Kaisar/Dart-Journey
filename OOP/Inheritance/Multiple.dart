/*Multiple Inheritance is a feature of object-oriented programming (OOP) where a single child class (subclass) can inherit from more than one parent class (superclasses).

This allows the child class to combine features and behaviors from multiple classes.
*/
// Multiple Inheritance (via Interfaces in Dart):
// Dart doesn't support multiple inheritance through extends but does support implementing multiple interfaces.

class Father {
  void fatherSkills() {
    print("Father: Farming");
  }
}

class Mother {
  void motherSkills() {
    print("Mother: Cooking");
  }
}

// Child implements both Father and Mother
class Child implements Father, Mother {
  @override
  void fatherSkills() {
    print("Inherited: Farming");
  }

  @override
  void motherSkills() {
    print("Inherited: Cooking");
  }
}

void main() {
  var child = Child();
  child.fatherSkills();
  child.motherSkills();
}

/*
implements diye ami bolsi:

“Ami Father o Mother class er interface follow korbo.”

But implements use korle, Father ar Mother er method gulo asole inherit hoy na!
amke nijer theke sob method abar likhte hoy!

Sejonno @override lagchhe, bujhaiye dite je
Ei method Father/Mother class theke asche
Ami etar notun implementation dicchi

🔥 Example in Real Life:
Imagine a SmartPhone:

It inherits features from a Phone (calls, SMS).
It also inherits features from a Camera (photos, videos).
A SmartPhone can do both, combining two functionalities.

*/

