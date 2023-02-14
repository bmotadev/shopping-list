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
      for(int i = 0; i < productsList.length; i++) { // imprime até o final da lista
        print("Item $i - ${productsList[i]}"); // imprime os items da lista de acorcom a posição na lista [i]
      }
    } else if(text == "remove"){
      print("=== Which item do you want to remove? ===");
      for(int i = 0; i < productsList.length; i++) { // imprime até o final da lista
        print("Item $i - ${productsList[i]}"); // imprime os items da lista de acorcom a posição na lista [i]
      }
      int item = int.parse(stdin.readLineSync() ?? '0');
      productsList.removeAt(item); // remove o item escolhido na lista
      print("=== Item removed ===");
    }else {
      productsList.add(text!);
      print("\x1B[2J\x1B[0;0H"); // faz a limpeza da tela no dart
    }

  }

}