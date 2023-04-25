import 'package:activity5/producto.dart';
import 'package:flutter/material.dart';

class Compra extends StatelessWidget {
  final List<producto> listaproductos;
  final double totalcompra;
  final String datetimenow = DateTime.now().toString();

  Compra({super.key, required this.listaproductos, required this.totalcompra});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Center(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Container(
                    width: 400,
                    height: 300,
                    decoration: BoxDecoration(color: Colors.amberAccent),
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 50),
                              child: Text(
                                "RESUMEN DE FACTURA",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold),
                              )),
                          SizedBox(
                            height: 20,
                          ),
                          Text("Fecha De Compra: $datetimenow",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 20)),
                          SizedBox(
                            height: 60,
                          ),
                          Text("RESUMEN DE PRODUCTOS",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: 400,
                    height: 300,
                    child: ListView.builder(
                      itemCount: listaproductos.length,
                      itemBuilder: (BuildContext context, int index) {
                        final productTile = listaproductos[index];
                        return ProductListTile(productoTile: productTile);
                      },
                    ),
                  ),
                ),
                Container(
                  width: 300,
                  decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(5)),
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.all(20),
                  child: Text("Total de la compra: \$$totalcompra",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ProductListTile extends StatelessWidget {
  final producto productoTile;

  ProductListTile({required this.productoTile});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        titleAlignment: ListTileTitleAlignment.center,
        title: Text(
          'PU: ${productoTile.preciounitario}',
        ),
        subtitle: Text('Cantidad: ${productoTile.cantidad}'),
        leading: Text(productoTile.nombreproducto,
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15)),
        trailing: Text(
            'Valor Linea: ${productoTile.preciounitario * productoTile.cantidad}'));
  }
}
