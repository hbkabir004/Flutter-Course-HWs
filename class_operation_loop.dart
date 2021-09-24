class PersonalInformation {
  List<String> information = [
    'Md. Hasanul Banna Khan Abir',
    '25/b, Hazi Mohsin Road, Khulna, Bangladesh.',
    'Bsc. in CSE (Studying)',
    'North Western University',
  ];

  // function declaration in class
  void info() {
    var i;
    for (i = 0; i < information.length; i++) {
      //print("information :  ${information[i]}");
      if (i == 0) {
        print("Name : ${information[i]}");
      } else if (i == 1) {
        print("Address : ${information[i]}");
      } else if (i == 2) {
        print("Study : ${information[i]}");
      } else if (i == 3) {
        print("Varsity : ${information[i]}");
      } else {
        print("end the loop");
      }
    }
  }
}

void main() {
  //class object declaration
  PersonalInformation personalInformation = new PersonalInformation();
//class function declaration
  personalInformation.info();
}
