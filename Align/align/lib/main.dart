import 'package:flutter/material.dart';

void main() {
  runApp(const Screen());
}

class Screen extends StatelessWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Align',
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Container(
              width: 250.0,
              height: 250.0,
              color: Colors.red,
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 80.0,
                  height: 80.0,
                  color: Colors.blue,
                  child: const Center(
                    child: Text('Mensaje'),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
