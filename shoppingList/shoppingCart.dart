import 'dart:io';

void main(List<String> args) {

  List<String> productsList = [];
  bool condition = true;


  while(condition) {
    print("=== Add a Product ====");

    String? text = stdin.readLineSync();
    if(text == "exit") {
      print("==== Finished Program ====");
      condition = false;
    } else if(text == "print"){
      print(productsList);
      print("\n");
    } 
    
    else {
      productsList.add(text!);
      print("\x1B[2J\x1B[0;0H"); // faz a limpeza da tela no dart
    }

  }

}