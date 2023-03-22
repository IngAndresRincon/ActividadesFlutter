import 'package:flutter/material.dart';

class ImageView extends StatelessWidget {
  const ImageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Padding SafeArea',
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.blueGrey,
                  width: 3,
                ),
              ),
              child: ClipOval(
                child: Image.asset(
                  "assets/imagen1.jpg",
                  fit: BoxFit.fitHeight,
                  width: 80,
                  height: 80,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
