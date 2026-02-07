import 'package:flutter/material.dart';

class ImagePacker extends StatelessWidget {
  const ImagePacker({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CircleAvatar(
            child: Column(
              children: [
                Icon(Icons.person),
                InkWell(
                  child: Icon(Icons.camera_alt),
                ),
              ],
            ),
            
          ),
        ],
      ),
    );
  }
}
