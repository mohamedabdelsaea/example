import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class GradientScreen extends StatelessWidget {
  const GradientScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: SweepGradient(
          colors: [Colors.blue, Colors.brown, Colors.cyan],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0),
          child: Column(
            children: [
              SizedBox(height: 150),
              ShaderMask(
                shaderCallback: (bounds) => LinearGradient(
                  colors: [Colors.blue, Colors.brown, Colors.cyan],
                ).createShader(bounds),
                child: Text(
                  'M7md Abdo',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 50),
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  gradient: SweepGradient(
                    colors: [
                      Colors.blue,
                      Colors.red,
                      Colors.white,
                      Colors.black,
                    ],
                  ),
                ),
              ),
              SizedBox(height: 50),
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: GradientBoxBorder(
                    gradient: LinearGradient(
                      colors: [
                        Colors.blue,
                        Colors.red,
                        Colors.white,
                        Colors.black,
                      ],
                    ),
                    width: 6,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
