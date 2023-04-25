import 'package:activity5/compra.dart';
import 'package:activity5/producto.dart';
import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Alert',
      home: Screen(),
    );
  }
}

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

enum TipoProducto { PIZZA_PEQUENA, PIZZA_MEDIANA, PIZZA_GRANDE }

class _ScreenState extends State<Screen> {
  TextEditingController TextCantidad = TextEditingController();
  String valueitem = "SELECCION";
  String tipoPizza = "";
  double totalCompra = 0;
  int contador = 0;

  List<producto> listaproductos = [];

  final List<DropdownMenuItem> listaPizza = [
    const DropdownMenuItem(
      child: Text("SELECCION"),
      value: "SELECCION",
    ),
    const DropdownMenuItem(
      value: "PIZZA_PEQUENA",
      child: Text("PIZZA PEQUEÑA - PU \$ 1.000"),
    ),
    const DropdownMenuItem(
      value: "PIZZA_MEDIANA",
      child: Text("PIZZA MEDIANA - PU \$ 3.000"),
    ),
    const DropdownMenuItem(
      value: "PIZZA_GRANDE",
      child: Text("PIZZA GRANDE - PU \$ 6.000"),
    ),
  ];

  List<ListTile> listaElementos = [];

  double funcCalcularBase(int Cantidad) {
    double precioUnitario = valueitem == TipoProducto.PIZZA_PEQUENA.name
        ? 1000
        : valueitem == TipoProducto.PIZZA_MEDIANA.name
            ? 3000
            : valueitem == TipoProducto.PIZZA_GRANDE.name
                ? 6000
                : 0;

    producto? _nuevoproducto = new producto(
        Cantidad, precioUnitario, (precioUnitario * Cantidad), valueitem);

    listaproductos.add(_nuevoproducto);

    totalCompra += precioUnitario * Cantidad;

    return precioUnitario * Cantidad;
  }

  void showAlert(BuildContext context, bool esError, String mensaje) {
    var alerDialog = AlertDialog(
      title:
          esError ? const Text("ERROR") : const Text('Información de Compra'),
      content: esError
          ? Text(mensaje)
          : Text(" El total de su compra es: \$" +
              totalCompra.toString() +
              " ¿Desea Continuar?"),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: esError
              ? []
              : [
                  Container(
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10)),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('NO',
                          style: TextStyle(color: Colors.white)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10)),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Compra(
                                    listaproductos: listaproductos,
                                    totalcompra: this.totalCompra,
                                  )),
                        );
                      },
                      child: const Text('SI',
                          style: TextStyle(color: Colors.white)),
                    ),
                  ),
                ],
        )
      ],
    );

    showDialog(
      context: context,
      builder: (BuildContext context) => alerDialog,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              height: 380,
              color: Color.fromARGB(255, 209, 209, 209),
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SizedBox(height: 30),
                    const Text("POR FAVOR SELECCIONE UNA OPCIÓN",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.deepPurple,
                            fontSize: 30,
                            fontWeight: FontWeight.bold)),
                    SizedBox(height: 10),
                    Container(
                      width: 300,
                      padding: EdgeInsets.only(top: 5, left: 5, right: 5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.black45, width: 1)),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton(
                            alignment: Alignment.center,
                            elevation: 10,
                            icon: Icon(
                              Icons.arrow_downward,
                            ),
                            borderRadius: BorderRadius.circular(10),
                            style: TextStyle(color: Colors.black),
                            onChanged: (value) {
                              setState(() {
                                valueitem = value;
                              });
                            },
                            value: valueitem,
                            items: listaPizza),
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      width: 300,
                      padding: EdgeInsets.only(left: 10, right: 5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.black45, width: 1)),
                      child: TextField(
                        controller: TextCantidad,
                        keyboardType: TextInputType.number,
                        autocorrect: true,
                        decoration: InputDecoration(
                            labelText: "Cantidad", border: InputBorder.none),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "SELECCIONE UN TIPO DE PIZZA",
                      style: TextStyle(
                          color: Colors.deepPurple,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GroupButton(
                            options: GroupButtonOptions(
                                borderRadius: BorderRadius.circular(20)),
                            isRadio: true,
                            buttons: const ['HAWAIANA', 'MEXICANA', 'RANCHERA'],
                            onSelected: (value, index, isSelected) {
                              setState(() {
                                tipoPizza = value;
                              });
                              print('$value, $index, $isSelected');
                            },
                          ),
                          // const Text('Selección multiple'),
                          // const CustomCheck(),
                          // const Text('Selección Unica'),
                          // const CustomRadio(),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 200,
                      child: ElevatedButton(
                        onPressed: () {
                          bool isError = TextCantidad.text == "" ||
                                  TextCantidad.text == "0"
                              ? true
                              : false;

                          if (isError) {
                            showAlert(context, isError,
                                "El valor de la cantidad no es válido");
                            return;
                          }

                          double baseproducto =
                              funcCalcularBase(int.parse(TextCantidad.text));

                          setState(() {
                            contador++;
                            TextCantidad.text = "";
                            valueitem = "SELECCION";
                            listaElementos.add(ListTile(
                              leading: const Icon(Icons.local_pizza),
                              title: Text(valueitem + ' ' + tipoPizza,
                                  style: const TextStyle(
                                      color: Colors.deepPurple)),
                              subtitle: Text('\$ $baseproducto'),
                              trailing: const Icon(Icons.shopping_cart),
                              // dense: true,
                              selected: true,
                              enabled: true,
                              onTap: () {
                                print('Tab');
                              },
                              onLongPress: () {
                                print('LongPress');
                              },
                            ));
                          });
                        },
                        child: Text("Agregar"),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.deepPurple),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Color.fromARGB(255, 227, 227, 225),
                child: ListView.builder(
                  itemCount: contador,
                  itemBuilder: (context, index) {
                    final item = listaElementos[index];
                    return Dismissible(
                      key: UniqueKey(),
                      // key: Key(item.toString()),
                      background: Container(
                        color: Colors.red,
                        child: Icon(Icons.delete),
                      ),
                      child: listaElementos[index],
                      onDismissed: (direction) {
                        // if (direction == DismissDirection.startToEnd) {
                        setState(() {
                          double valorarestar =
                              listaproductos.removeAt(index).preciototal;

                          totalCompra -= valorarestar;
                          contador--;
                          listaElementos.removeAt(index);
                        });
                        // }
                      },
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amberAccent),
                onPressed: () {
                  showAlert(context, false, "");
                },
                child: const Text('Comprar'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
