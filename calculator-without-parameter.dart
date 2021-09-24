num add() {
  num a = 555454;
  num b = 45.2546;
  return a + b;
}

num sub() {
  num a = 555454;
  num b = 45.2546;
  return a - b;
}

num mult() {
  num a = 555454;
  num b = 45.2546;
  return a * b;
}

num div() {
  num a = 555454;
  num b = 45.2546;
  return a / b;
}

num mod() {
  num a = 555454;
  num b = 45.2546;
  return a % b;
}

String stringReturn() {
  String name = 'Md. Hasanul Banna Khan Abir';
  return name.toUpperCase();
}

void main() {
  print('''
  Addition: ${add()}')
  Subtraction: ${sub()}
  Multiplication: ${mult()}
  Division: ${div()}
  Modulus: ${mod()}
  Name: ${stringReturn()}
  ''');
}
