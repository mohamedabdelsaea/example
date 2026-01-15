// import 'package:barcode_widget/barcode_widget.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
//
// class QrCodeFunction {
//   static scanCode() async {
//     try {
//       String code = await FlutterBarcodeScanner.scanBarcode(
//         '#E2BE7F',
//         'Cancel',
//         true,
//         ScanMode.QR,
//       );
//       print("is code $code");
//     } catch (e) {
//       print(e);
//     }
//   }
//
//   static showCode() {
//     return Column(
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         BarcodeWidget(
//           backgroundColor: Colors.black87,
//           color: Colors.lightBlueAccent,
//           width: 200,
//           height: 200,
//           data: '01121191680',
//           barcode: Barcode.qrCode(),
//           drawText: true,
//         ),
//       ],
//     );
//   }
// }