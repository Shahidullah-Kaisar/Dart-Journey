class Printer {
  void printDoc() {
    print("Printing document...");
  }
}

class Scanner {
  void scanDoc() {
    print("Scanning document...");
  }
}

class AllInOneMachine implements Printer, Scanner {
  @override
  void printDoc() {
    print("All-in-One: Printing document...");
  }

  @override
  void scanDoc() {
    print("All-in-One: Scanning document...");
  }
}

void main() {
  AllInOneMachine machine = AllInOneMachine();
  machine.printDoc();  
  machine.scanDoc();   
}
