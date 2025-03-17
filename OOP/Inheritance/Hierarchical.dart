// Hierarchical Inheritance
// Multiple classes inherit from a single parent class.

class Parent {
  void greet() {
    print("Hello from Parent");
  }
}

class ChildOne extends Parent {
  void childOneFeature() {
    print("I am Child One");
  }
}

class ChildTwo extends Parent {
  void childTwoFeature() {
    print("I am Child Two");
  }
}

void main() {
  var child1 = ChildOne();
  child1.greet();
  child1.childOneFeature();

  var child2 = ChildTwo();
  child2.greet();
  child2.childTwoFeature();
}
