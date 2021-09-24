class Loop {
  //num ,double , inteser type list declaration
  List<int> number = [3483, 738478, 348, 8348, 273];
  List<double> number1 = [234.909, 67, 67263.828, 62732.82983, 7382, 90];
  List<num> number2 = [7287, 27.7382, 283, 7237, 6273, 723.2738, 237];

  //function declaration inteser

  void totalInt() {
    var i;
    num total = 0;
    for (i = 0; i < number.length; i++) {
      total = total + number[i];
    }
    print("Inteser total value : $total \n");
  }

  //function declaration double

  void totalDouble() {
    var i;
    num total = 0;
    for (i = 0; i < number1.length; i++) {
      total = total + number[1];
    }
    print("Double total value :$total");
  }

  // function declaration in class
  void calculator() {
    var i;
    num total = 0;
    for (i = 0; i < number2.length; i++) {
      if (i == 0) {
        total = total + number2[i];
        print(" 0 index result : $total");
      } else if (i == 1) {
        total = total + number2[i] + number2[0];
        print(" 1 index result : $total");
      } else if (i == 2) {
        total = total + number2[i] + number2[1] + number2[0];
        print(" 2 index result : $total");
      } else if (i == 3) {
        total = total + number2[i] + number2[2] + number2[1] + number2[0];
        print(" 3 index result : $total");
      } else if (i == 4) {
        total = total +
            number2[i] +
            number[3] +
            number2[2] +
            number2[1] +
            number2[0];
        print(" 4 index result : $total");
      } else if (i == 5) {
        total = total +
            number2[i] +
            number2[4] +
            number[3] +
            number2[2] +
            number2[1] +
            number2[0];
        print(" 5 index result : $total");
      } else if (i == 6) {
        total = total +
            number2[i] +
            number2[5] +
            number2[4] +
            number[3] +
            number2[2] +
            number2[1] +
            number2[0];
        print(" 6 index result : $total");
      } else {
        print("Loop end");
      }
    }
    print("Total number result : $total");
  }
}

void main() {
  //class object declaration
  Loop loop = new Loop();
  loop.calculator();
  loop.totalInt();
  loop.totalDouble();
}
