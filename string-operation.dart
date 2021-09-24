void main() {
  String name = 'Md. Hasanul Banna Khan Abir ';
  String address = '25/b, Hazi Mohsin Road, Khulna, Bangladesh. ';
  String study = 'Bsc. in CSE (Studying) ';
  String varsity = 'North Western University ';
  String str01 = 'good';
  String str02 = 'good ';
  String empty = '';

  int name_length = name.length;
  int address_length = address.length;
  int study_length = study.length;
  int varsity_length = varsity.length;

  print('''
   name_length : $name_length
   address_length : $address_length
   study_length : $study_length
   varsity_length: $varsity_length
   ''');

  //  UPPER CASE VALUE PRINT
  print('''
   Name: ${name.toUpperCase()}
   Address: ${address.toUpperCase()}
   Study: ${study.toUpperCase()}
   Varsity: ${varsity.toUpperCase()}
   ''');

  //  lower case value print
  print('''
   Name: ${name.toLowerCase()}
   Address: ${address.toLowerCase()}
   Study: ${study.toLowerCase()}
   Varsity: ${varsity.toLowerCase()}
   ''');

  //  String addition
  print('''
  Personal Info: ${(name + address + study + varsity)}
  ''');
  //String Indexing
  print('Nick Name: ${name.substring(23, 27)}');
  //String Comparison
  int isEqual = str01.compareTo(str02);
  /* str01 == str02 --> 0
     str01 > str02 --> 1
     str01 < str02 --> -1*/
  print('String Compare: $isEqual');

  bool isNull = empty.isEmpty;
  print('''
  Does this String null?
  Answer: $isNull.
  ''');
}
