import 'dart:io';
import 'package:example/image_packer/model_dialog.dart';
import 'package:flutter/material.dart';

class ImagePackerScreen extends StatefulWidget {
  const ImagePackerScreen({super.key});

  @override
  State<ImagePackerScreen> createState() => _ImagePackerScreenState();
}

class _ImagePackerScreenState extends State<ImagePackerScreen> {
  File? packerImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 200),
            GestureDetector(
              onTap: () async {
                final img = await ModelDialog.dialog(context);
                if (img != null) {
                  setState(() {
                    packerImage = img;
                  });
                }
              },
              child: CircleAvatar(
                radius: 150,
                backgroundColor: Colors.grey.shade300,
                backgroundImage: packerImage != null
                    ? FileImage(packerImage!)
                    : null,
                child: packerImage == null
                    ? const Icon(Icons.person, size: 50)
                    : null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
