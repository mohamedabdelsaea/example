import 'package:flutter/material.dart';

class HomeThere extends StatefulWidget {
  const HomeThere({super.key});

  @override
  State<HomeThere> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeThere> {
  double height = 150;
  double width = 150;
  Color color = Colors.blueAccent;
  double redis = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              Center(
                child: AnimatedContainer(
                  duration: Duration(seconds: 3),
                  height: height,
                  width: width,
                  decoration: BoxDecoration(
                      color: color, borderRadius: BorderRadius.circular(redis)),
                  // onEnd: () {
                  //   setState(() {
                  //     height = 150;
                  //     width = 150;
                  //     color = Colors.blueAccent;
                  //     redis = 50;
                  //   });
                  // },
                ),
              ),
              SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    height = 250;
                    width = 250;
                    color = Colors.red;
                    redis = 25;
                  });
                },
                child: Text('animtion'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
