import 'dart:io';
import 'ClsPizza.dart';

void main() {
  print("Bienvenido!\nLe ofrecemos los siguiente productos:\n");
  ListaMenu();
}

enum Pizzas { Grande, Mediana, Pequena }

void ListaMenu() {
//String entrada =

  for (Pizzas p in Pizzas.values) {
    print((p.index + 1).toString() + ". Pizza " + p.name);
  }
  print("\n¿Cuál desea escoger?: ");
  int item = int.parse(stdin.readLineSync().toString());
  Pizzas ItemPizza = Pizzas.values.elementAt(item - 1);

  int Valor = 0;

  switch (ItemPizza) {
    case Pizzas.Grande:
      Valor = 6000;
      break;
    case Pizzas.Mediana:
      Valor = 3000;

      break;
    case Pizzas.Pequena:
      Valor = 1000;
      break;
  }

  String Textovalor = "El valor de la pizza es de: \$" + Valor.toString();
  print(Textovalor + "\n" + "¿Cuántas pizzas quiere llevar? :");
  int Cantidad = int.parse(stdin.readLineSync().toString());
  Pedido nuevoPedido =
      Pedido(ItemPizza.toString(), double.parse(Valor.toString()), Cantidad);

  print("El total de su pedido es de : \$" +
      nuevoPedido.CalcularTotalPedido().toString());
}
