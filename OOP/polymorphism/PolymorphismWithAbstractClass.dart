abstract class Shape {
  void area(); // Abstract method
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  void area() {             
    print("Area of Circle: ${3.14 * radius * radius}");
  }
}

class Rectangle extends Shape {
  double width, height;

  Rectangle(this.width, this.height);

  @override
  void area() {
    print("Area of Rectangle: ${width * height}");
  }
}

void main() {
  Shape shape1 = Circle(5);
  Shape shape2 = Rectangle(4, 6);

  shape1.area();  
  shape2.area(); 
}

/*
✅ Why did we use abstract in this code?
🔸 Abstract class means incomplete or blueprint only.
It defines structure, but doesn’t provide full implementation.
It can have abstract methods (methods without a body).

কেন abstract ক্লাস ব্যবহার করা হয়েছে?
abstract মানে: অসম্পূর্ণ ।
এটা এমন একটা ক্লাস, যেটা পুরোপুরি implement করা হয়নি।
এতে abstract methods থাকতে পারে—যার body থাকে না, শুধু method-এর declaration থাকে।

---------------------------------

এই কোডে abstract class Shape কেন লাগছে?

1️⃣ Common Structure Define করার জন্য
Shape হল একটা base structure, যেখান থেকে Circle, Rectangle ইত্যাদি inherit করবে।
area() method আছে, কিন্তু কি ভাবে area বের করবে, সেটা Shape জানে না।
 এটা Circle আর Rectangle এর দায়িত্ব!

2️⃣ Force করে বলছে Subclass গুলো area() implement করবে!
Shape ক্লাস বলছে:
"তোমরা যারা আমার subclass হবে (যেমন: Circle, Rectangle), তোমাদের area() define করতেই হবে।"

---------------------------
3️⃣ Object Creation Restrict করে
abstract class-এর object তৈরি করা যায় না।
এটা শুধু subclass-দের guide করে।
Example:

abstract class Vehicle {
  void move();
}
Vehicle v = Vehicle(); // ❌ Error! Abstract class can't be instantiated.


⭐ Real Life Example:
abstract class → "Contract" / "Rulebook"
➡️ যারা ঐ class extend করবে, তাদের নিয়ম মানতেই হবে।


*/