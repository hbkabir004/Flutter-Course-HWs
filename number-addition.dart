void main() {
  //  Variable Declaration
  int number01 = 57;
  double number02 = 54564.34654;
  num number03 = 8787.0236;
  num number04 = 256;

  //  Addition
  num result = number01 + number02 + number03 + number04;
  //  Convertion (Float to Integer)
  num floatToInt = number02.toInt();

  //  Printing Output
  print('''
  The addition is: ${result} 
  number02 as Interger: ${floatToInt}
  ''');
}
