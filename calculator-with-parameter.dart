num add(x, y) {
  return x + y;
}

num sub(x, y) {
  return x - y;
}

num mult(x, y) {
  return x * y;
}

num div(x, y) {
  return x / y;
}

num mod(x, y) {
  return x % y;
}

String stringReturn(name) {
  return name.toUpperCase();
}

void main() {
  print('''
  Addition: ${add(56456455, 45.214)}')
  Subtraction: ${sub(56456455, 45.214)}
  Multiplication: ${mult(56456455, 45.214)}
  Division: ${div(56456455, 45.214)}
  Modulus: ${mod(56456455, 45.214)}
  Name: ${stringReturn('Md. Hasanul Banna Khan Abir')}
  ''');
}
