mixin A {
  void displayA() {
    print("Class A");
  }
}

mixin B {
  void displayB() {
    print("Class B");
  }
}

class C with A, B {
  // Multiple inheritance using mixins
}

void main() {
  C obj = C();
  obj.displayA();
  obj.displayB();
}

/*
Difference between with and implements in Multiple inheritance:

with(Mixins)---Parent class-এর method গুলো পরিবর্তন ছাড়া পাওয়া যায়
implements---- Parent class-এর method redefine করতে হয় (Override বাধ্যতামূলক)

*/