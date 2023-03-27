import 'package:flutter/material.dart';
import 'dart:ui';

class MyContainerWidget extends Container {
  MyContainerWidget({
    double? width,
    double? height,
    // Color? color,
    Widget? child,
    BoxDecoration? decoration,
  }) : super(
            width: width,
            height: height,
            // color: color,
            child: child ?? Icon(Icons.account_circle),
            decoration: decoration ??
                BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black, width: 1)));
}

class HomePage extends StatelessWidget {
  List<Container> ItemContainer = [
    Container(
        width: 200,
        height: 300,
        decoration: BoxDecoration(
            color: Colors.pink,
            border: Border.all(color: Colors.white, width: 1)),
        child: Icon(Icons.adb_rounded)),
    Container(
        width: 200,
        height: 300,
        decoration: BoxDecoration(
            color: Colors.greenAccent,
            border: Border.all(color: Colors.white, width: 1)),
        child: Icon(Icons.workspace_premium_rounded)),
    Container(
        width: 200,
        height: 300,
        decoration: BoxDecoration(
            color: Colors.lime,
            border: Border.all(color: Colors.white, width: 1)),
        child: Icon(Icons.workspace_premium_rounded)),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: Scaffold(
        body: SafeArea(
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Row(
                  //crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: MyContainerWidget(
                        width: 200,
                        height: 300,
                        child: Icon(Icons.adb_rounded),
                        decoration: BoxDecoration(
                            color: Colors.amberAccent,
                            border: Border.all(color: Colors.white, width: 1)),
                      ),
                    ),
                    Expanded(
                      child: MyContainerWidget(
                        width: 200,
                        height: 300,
                        child: Icon(Icons.ac_unit),
                      ),
                    ),
                    Expanded(
                      child: MyContainerWidget(
                        width: 200,
                        height: 300,
                        child: Icon(Icons.access_alarm_outlined),
                        decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            border: Border.all(color: Colors.white, width: 1)),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: MyContainerWidget(
                        width: 200,
                        height: 300,
                        child: Image.asset(
                          "assets/imagen3.jpg",
                          fit: BoxFit.fill,
                          width: 20,
                          height: 20,
                        ),
                        decoration: BoxDecoration(
                            color: Colors.blueGrey,
                            border: Border.all(color: Colors.white, width: 1)),
                      ),
                    ),
                    Expanded(
                      child: MyContainerWidget(
                        width: 200,
                        height: 300,
                        child: Image.asset(
                          "assets/imagen2.jpg",
                          fit: BoxFit.fill,
                          width: 20,
                          height: 20,
                        ),
                        decoration: BoxDecoration(
                            color: Colors.brown,
                            border: Border.all(color: Colors.white, width: 1)),
                      ),
                    ),
                    Expanded(
                      child: MyContainerWidget(
                        width: 200,
                        height: 300,
                        child: Image.asset(
                          "assets/imagen1.jpg",
                          fit: BoxFit.cover,
                          width: 20,
                          height: 20,
                        ),
                        decoration: BoxDecoration(
                            color: Colors.deepOrange,
                            border: Border.all(color: Colors.white, width: 1)),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: MyContainerWidget(
                        width: 200,
                        height: 300,
                        child: Icon(Icons.accessibility_new),
                        decoration: BoxDecoration(
                            color: Colors.cyan,
                            border: Border.all(color: Colors.white, width: 1)),
                      ),
                    ),
                    Expanded(
                      child: MyContainerWidget(
                        width: 200,
                        height: 300,
                        child: Icon(Icons.accessible_forward),
                        decoration: BoxDecoration(
                            color: Colors.lightGreenAccent,
                            border: Border.all(color: Colors.white, width: 1)),
                      ),
                    ),
                    Expanded(
                      child: MyContainerWidget(
                        width: 200,
                        height: 300,
                        decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            border: Border.all(color: Colors.white, width: 1)),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
