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

int factorial(int n) {
  if (n == 0) return 1;
  return n * factorial(n - 1);
}

void main() {
  print(factorial(5)); 
}
