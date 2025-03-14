/* ---------date: 11-03-25------------
import 'dart:io';

int Fibonacci(int n){
  if(n<=1){
    return n;
  }
  return Fibonacci(n-1) + Fibonacci(n-2);
}
void main(){
  print("Enter a valid number: ");
  int n = int.parse(stdin.readLineSync()!);
  print('Fibonacci series up to $n: ');

  for(int i=0;i<n;i++){
    print(Fibonacci(i));
  }
}
*/

//-----date: 12-03-25-----
// ------------Type Test Operators(is / is! / as)--------------

/*
void main() {
  var name = "John Doe";

  if (name is String) {
    print('Yes! It\'s a String!');
  } else {
    print('No, it\'s not a String.');
  }
}
*/

/*
void main() {
  Object obj = 'Hello World';

  if (obj is String) {
    String str = obj as String; // Type casting
    print('The length of the string is ${str.length}');
  }
}
*/
/*
void describe(Object obj) {
  if (obj is String) {
    print('This is a String with length ${obj.length}');
  } else if (obj is int) {
    print('This is an int with value $obj');
  } else if (obj is! String && obj is! int) {
    print('This is neither String nor int');
  }

  if (obj is String) {
    String str = obj as String;
    print('Uppercase: ${str.toUpperCase()}');
  }
}

void main() {
  describe("Hello Dart");
  describe(42);
  describe(3.14);
}
*/

// -------------function-----------------
/*
int add(int a, int b) {
  return a + b;
}
void main() {
  int result = add(5, 10);
  print('sum: $result');
}
*/
/* OR
int add(int a, int b) => a + b;
void main() {
  int result = add(5, 10);
  print('sum: $result');
}
*/
/*
void greet(String name, [String? title]) {
  if (title != null) {
    print('Hello, $title $name');
  } else {
    print('Hello, $name');
  }
}

void main() {
  greet('Rakib');
  greet('Rakib', 'Mr.');
}
*/
/*
void greet([String name = 'Guest']) { // [ ] means default value or you can either pass a parameter or choose not to pass it
  print('Hello, $name');
}

void main() {
  greet();          
  greet('Hasan');    
}
*/

// ------------Anonymous Function----------
/*
void main() {
  Function addNumbers = (int a, int b) {
    return a + b;
  };

  print(addNumbers(5, 10)); 
}
*/

/*
void main() {
  var list = ['A', 'B', 'C'];

  list.forEach((item) {
    print(item);
  });
}
*/

// -------------Recursion Function---------
/*
int factorial(int n) {
  if (n == 0) return 1;
  return n * factorial(n - 1);
}

void main() {
  print(factorial(5)); 
}
*/

// -------------------date: 13-03-2025-----------------
// -------------------Dart OOP----------------------

// constructor
/*
class Student {   // Default constructor
  late String name;
  late int age;

  void display(){
    print('name: $name and $age');
  }
}

void main(){
  Student student1 = Student();
  student1.name = 'Sajib';
  student1.age = 23;
  student1.display();
}
*/

/*
class Student {   // Parameterized Constructor
  late String name;
  late int age;

  Student(String name, int age) {
    this.name = name;  //We use the this keyword when the constructor parameter name is the same as the instance variable name.
    this.age = age;
  }

  void display() {
    print('Name: $name, Age: $age');
  }
}

void main() {
  
  Student student1 = Student('Sajib', 23);
  student1.display();

  Student student2 = Student('Anik', 25);
  student2.display();
}
*/
/*   
class Person {       // Named Constructor with fixed value or without parameters
  String name;
  int age;

  Person(this.name, this.age);  // Normal constructor

  Person.guest()  // Named constructor
      : name = 'Guest',
        age = 0;
}

void main() {
  
  Person p1 = Person('Alice', 25); // Normal constructor diye object create
  print('Normal Constructor -> Name: ${p1.name}, Age: ${p1.age}');

  Person guestPerson = Person.guest();  // Named constructor diye object create
  print('Named Constructor -> Name: ${guestPerson.name}, Age: ${guestPerson.age}');
}
*/

/*
class Person {  // Named constructor with parameters
  String name;
  int age;

  Person(this.name, this.age);  // Normal constructor

  Person.guest(String guestName, int guestAge) // Named constructor with parameters
      : name = guestName, //The : symbol in the constructor is used to initialize instance variables before the constructor body runs.
        age = guestAge;
}

void main() {
  Person p1 = Person('Alice', 25); 
  print('Normal Constructor -> Name: ${p1.name}, Age: ${p1.age}');
  
  Person guestPerson = Person.guest('Bob', 30); // Named constructor with parameters
  print('Named Constructor -> Name: ${guestPerson.name}, Age: ${guestPerson.age}');
}
*/

class Animal {
  void makeSound() {
    print("Animal makes a sound");
  }
}

class Dog extends Animal {
  @override
  void makeSound() {
    print("Dog barks");
  }
}

class Cat extends Animal {
  @override
  void makeSound() {
    print("Cat meows");
  }
}

void main() {
  Animal animal1 = Dog(); // Parent class reference but Dog object
  Animal animal2 = Cat(); // Parent class reference but Cat object

  animal1.makeSound(); // Output: Dog barks
  animal2.makeSound(); // Output: Cat meows
}
