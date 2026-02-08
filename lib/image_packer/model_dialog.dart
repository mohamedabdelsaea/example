import 'dart:io';
import 'package:flutter/material.dart';
import 'package:example/image_packer/image_packer_model.dart';

class ModelDialog {
  static Future<File?> dialog(BuildContext context) async {
    return showDialog<File>(
      context: context,
      builder: (context) {
        var size = MediaQuery.of(context).size;

        return Dialog(
          backgroundColor: Colors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Container(
            width: size.width * 0.7,
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  "Choose Image",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 25),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _item(
                      icon: Icons.camera_alt,
                      text: "Camera",
                      onTap: () async {
                        final img =
                        await ImagePackerModel.cameraPicker();
                        Navigator.pop(context, img);
                      },
                    ),
                    _item(
                      icon: Icons.image,
                      text: "Gallery",
                      onTap: () async {
                        final img =
                        await ImagePackerModel.galleryPacker();
                        Navigator.pop(context, img);
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  static Widget _item({
    required IconData icon,
    required String text,
    required VoidCallback onTap,
  }) {
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(50),
          child: Container(
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              shape: BoxShape.circle,
            ),
            child: Icon(icon, size: 32, color: Colors.black),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          text,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
