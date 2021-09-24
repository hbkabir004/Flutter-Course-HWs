class Information {
  String name = 'Md. Hasanul Banna Khan Abir ';
  num salary = 10000;
  num bonus = 89384;
  num vat = 34.278372;

  void function() {
    print('Name : $name\n');
  }

  void information() {
    String name = 'Md. Hasanul Banna Khan Abir ';
    String address = '25/b, Hazi Mohsin Road, Khulna, Bangladesh. ';
    String study = 'Bsc. in CSE (Studying) ';
    String varsity = 'North Western University ';

    //  print uppercase
    print('''
  Personal Info: ${(name + address + study + varsity).toUpperCase()}
    ''');
    //  print lowercase
    print('''
  Personal Info: ${(name + address + study + varsity).toLowerCase()}
  ''');
  }

  void salaryTotal() {
    print('Total salary : ${salary + bonus + vat}\n');
  }
}

void main() {
  // class object declaration
  Information information = new Information();
  // class function access by class object
  information.function();
  information.salaryTotal();
  information.information();
}
