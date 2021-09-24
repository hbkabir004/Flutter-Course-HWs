class Operation {
  Operation(
      {this.name,
      this.address,
      this.dept,
      this.varsity,
      this.salary,
      this.foodalounc,
      this.livealounc,
      this.bonus});
  //variable declaration in class
  String name;
  String address;
  String dept;
  String varsity;
  num salary;
  num foodalounc;
  num livealounc;
  num bonus;

  void informationReturn() {
    print('''
   Name: ${name}
   Address: ${address}
   Study: ${dept}
   Varsity: ${varsity}
   ''');
  }

  void totalSalary() {
    print("Total Salary : ${salary + foodalounc + livealounc + bonus}");
  }
}

void main() {
  // variable declaration for class constractor value pass
  String name = "Abir";
  String address = "Khulna";
  String dept = "CSE";
  String varsity = "NWU";
  num salary = 232323;
  num foodalounc = 89.93;
  num livealounc = 8348.4959;
  num bonus = 892839;
  //class object declaration in main function

  Operation operation = new Operation();

  // operation class constractor

  Operation operation1 = new Operation(
      name: name,
      address: address,
      dept: dept,
      varsity: varsity,
      salary: salary,
      foodalounc: foodalounc,
      livealounc: livealounc,
      bonus: bonus);

  operation1.informationReturn();
  operation1.totalSalary();
}
