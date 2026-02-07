import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    double height = 50;
    double width = 50;
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: AnimatedContainer(
              duration: Duration(seconds: 2),
              height: height,
              width: width,
              color: Colors.blue,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                width = 100;
                height = 100;
              });
            },
            child: Text('animation'),
          ),
        ],
      ),
    );
  }
}
