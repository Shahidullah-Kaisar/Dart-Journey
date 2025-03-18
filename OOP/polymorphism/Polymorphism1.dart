class Animal {
  void sound() {
    print("Animal makes a sound");
  }
}

class Dog extends Animal {
  @override
  void sound() {
    print("Dog barks");
  }
}

class Cat extends Animal {
  @override
  void sound() {
    print("Cat meows");
  }
}

void main() {
  Animal myDog = Dog(); // Parent class reference to child class object
  Animal myCat = Cat();

  myDog.sound(); 
  myCat.sound(); 
}

/*
Animal myDog = Dog(); // Animal type reference
Animal myCat = Cat();

myDog.sound(); // Dog barks
myCat.sound(); // Cat meows

You’re using Animal as the reference type, but the objects are Dog() and Cat().
Even though the reference is of type Animal, Dart calls the overridden methods in Dog and Cat classes because the actual objects are Dog and Cat.
 This is called runtime polymorphism (or dynamic method dispatch).[যেটা runtime এ ঠিক করে কোন sound() চলবে।] 

Jokhn dorkar:

Flexible & Maintainable Code চাইলে:
Future-এ নতুন subclass যোগ করলেও parent reference (Animal) change করতে হবে না।


-----------------------------
using Dog and Cat class instead of Animal:

Dog myDog = Dog();
Cat myCat = Cat();

myDog.sound(); 
myCat.sound(); 

You're directly referencing the child class with its own type.
It works the same way, because Dart knows it's dealing with Dog and Cat objects.
But here, you're not using polymorphism.
You're directly using the Dog and Cat types.


Dog myDog = Dog(); কখন ব্যবহার করবো?

➤ যখন Specific Behavior দরকার:
শুধুমাত্র Dog ক্লাসের special method access করতে চাইলে।

-------------------------------

কবে Animal রেফারেন্স দিবে?
🔸 ধরো তোমার অনেকগুলো Animal আছে।
🔸 তুমি চাও, আলাদা আলাদা না দেখে, সবাইকে একইভাবে handle করবে।
➡️ তখন Animal রেফারেন্স দিলে সহজ হবে।

short code :

List<Animal> animals = [Dog(), Cat(), Dog()];
for (var animal in animals) {
  animal.sound(); // যে যার নিজের sound() method কল করবে
}
এখানে তুমি জানো না কে Dog আর কে Cat, কিন্তু সবাইকে Animal হিসেবে দেখছো।

full code: 

// Base class (Parent)
class Animal {
  void sound() {
    print("Animal makes a sound");
  }
}

// Dog class (Child of Animal)
class Dog extends Animal {
  @override
  void sound() {
    print("Dog barks");
  }
}

// Cat class (Child of Animal)
class Cat extends Animal {
  @override
  void sound() {
    print("Cat meows");
  }
}

void main() {
  // List of Animal references holding Dog and Cat objects
  List<Animal> animals = [Dog(), Cat(), Dog()];

  // Looping through the list and calling the sound() method
  for (var animal in animals) {
    animal.sound(); // Polymorphism: যার যার sound() কল হবে
  }
}

----------------

একটা analogy:

ধরো Animal হলো গাড়ি (vehicle)।
Dog আর Cat হলো আলাদা আলাদা গাড়ির ব্র্যান্ড।
তুমি যদি বলো Vehicle myCar = Tesla();, তখন future এ BMW() দিলে কোনো issue নাই।
কিন্তু Tesla myCar = Tesla(); দিলে future এ BMW() দিলে error দিবে।
তাই parent টাইপ use করলে flexible আর reusable হয়।

*/

