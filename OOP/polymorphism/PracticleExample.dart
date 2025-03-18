abstract class PaymentMethod {
  void pay(double amount);
}

class CreditCardPayment extends PaymentMethod {
  @override
  void pay(double amount) {
    print("Paid \$${amount} with Credit Card");
  }
}

class PaypalPayment extends PaymentMethod {
  @override
  void pay(double amount) {
    print("Paid \$${amount} with Paypal");
  }
}

void main() {
  List<PaymentMethod> payments = [
    CreditCardPayment(),
    PaypalPayment()
  ];

  for (var payment in payments) {
    payment.pay(100); 
  }
}
