import 'dart:io';

List<String> productsList = []; // variavel global
void main(List<String> args) {

  bool condition = true;


  while(condition) {
    print("=== Add a Product ====");

    String? text = stdin.readLineSync();
    if(text == "exit") {
      print("==== Finished Program ====");
      condition = false;
    } else if(text == "print"){
      printShoppingList();
    } else if(text == "remove"){
      removeItemFromList();
    }else {
      addItemToList(text);
    }

  }

}

//função para lista os itens da lista
printShoppingList() {
  for(int i = 0; i < productsList.length; i++) { // imprime até o final da lista
        print("Item $i - ${productsList[i]}"); // imprime os items da lista de acorcom a posição na lista [i]
      }
}

//função para remover item da lista baseado na posição do item
removeItemFromList(){
      print("=== Which item do you want to remove? ===");
      printShoppingList();
      int item = int.parse(stdin.readLineSync() ?? '0'); // recebe o que foi digitado em texto, depois converte em
      productsList.removeAt(item); // remove o item escolhido na lista
      print("=== Item removed ===");
}


//função para adicionar item na lista, passando o item digitado(text) como parametro
addItemToList(text) {
      productsList.add(text!);
      print("\x1B[2J\x1B[0;0H"); // faz a limpeza da tela no dart
}