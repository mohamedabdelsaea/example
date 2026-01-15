// import 'package:flutter/material.dart';
// import 'package:qr_code/qr_code_function.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Barcode',
//       debugShowCheckedModeBanner: false,
//       home: const MyHomePage(title: 'Flutter Barcode'),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           children: [
//             const SizedBox(height: 200),
//             GestureDetector(
//               onTap: QrCodeFunction.scanCode,
//               child: Text(
//                 'Scan Qr Code !?',
//                 style: TextStyle(
//                   color: Colors.black,
//                   fontWeight: FontWeight.bold,
//                   fontSize: 24,
//                 ),
//               ),
//             ),
//             SizedBox(height: 200),
//             GestureDetector(
//               onTap: dialog,
//               child: Text(
//                 'Show Qr Code !?',
//                 style: TextStyle(
//                   color: Colors.black,
//                   fontWeight: FontWeight.bold,
//                   fontSize: 24,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   dialog() {
//     showDialog(
//       context: context,
//       builder: (context) => AlertDialog(
//         content: QrCodeFunction.showCode(),
//         actions: [
//           TextButton(
//             onPressed: () {
//               Navigator.pop(context);
//             },
//             child: Text(
//               'cancle',
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }