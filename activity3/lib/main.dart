import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MainApp());
}

// class Item {
//   static const Inbox = 'Inbox';
//   static const Email = 'Email';
//   static const Login = 'Login';
//   static const New = 'New';

//   static const List choices = [Inbox, Email, Login, New];
// }

class CustomerContainer extends StatelessWidget {
  Widget? textContainer;
  double? width;
  double? height;

  CustomerContainer(
      {super.key,
      required this.textContainer,
      required this.width,
      required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: width,
      height: height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.deepPurple),
      child: textContainer,
    );
  }
}

class MainApp extends StatefulWidget {
  MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int _contador = 0;
  double _width = 0;
  double _height = 0;
  List<Widget> widgetsList = [];

  // void choiceAction(value) {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: Scaffold(
          appBar: AppBar(
            // actions: [
            //   IconButton(
            //     onPressed: () {},
            //     icon: const Icon(Icons.search),
            //   ),
            //   PopupMenuButton(
            //     onSelected: choiceAction,
            //     itemBuilder: drawOptions,
            //   ),
            // ],
            centerTitle: true,
            title: Text('Bienvenido',
                style:
                    TextStyle(fontFamily: 'Delicious Handrawn', fontSize: 40)),
          ),
          floatingActionButton: SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  child: FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        if (_contador != 30) {
                          _contador++;
                          _width++;
                          _height++;
                        } else {
                          widgetsList.clear();
                          _contador = 1;
                          _width = 10;
                          _height = 10;
                        }

                        widgetsList.add(CustomerContainer(
                          textContainer: Text(
                            '$_contador',
                            style: TextStyle(color: Colors.white),
                          ),
                          height: _height,
                          width: _width,
                        ));
                      });
                    },
                    child: const Icon(Icons.add),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        if (widgetsList.length > 0) {
                          widgetsList.removeAt(_contador - 1);
                          _contador--;
                          _width--;
                          _height--;
                        }
                      });
                    },
                    child: const Icon(Icons.remove),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        _contador = 0;
                        _width = 10;
                        _height = 10;
                        widgetsList.clear();
                      });
                    },
                    child: const Icon(Icons.restart_alt),
                  ),
                ),
              ],
            ),
          ),
          body: SafeArea(
            child: Center(
                // child: Text('Hello World: ! $contador'),

                child: Column(children: widgetsList)),
          )),
    );
  }
}
