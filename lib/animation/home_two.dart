import 'package:flutter/material.dart';

class HomeTwo extends StatefulWidget {
  const HomeTwo({super.key});

  @override
  State<HomeTwo> createState() => _HomeOneState();
}

class _HomeOneState extends State<HomeTwo> {
  bool isFirst = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: AnimatedCrossFade(
              duration: Duration(seconds: 4),
              crossFadeState: isFirst
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
              firstChild: Container(
                height: 150,
                width: 150,
                color: Colors.blue,
              ),
              secondChild: Container(
                height: 250,
                width: 250,
                color: Colors.red,
              ),
            ),
          ),
          SizedBox(height: 50),
          ElevatedButton(
            onPressed: () {
              setState(() {
                isFirst = !isFirst;
              });
            },
            child: Text('animation'),
          ),
        ],
      ),
    );
  }
}
