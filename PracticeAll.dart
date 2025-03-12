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