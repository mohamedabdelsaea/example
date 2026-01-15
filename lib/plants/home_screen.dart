// import 'package:flutter/material.dart';
//
// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});
//
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//   int selectedIndex = 0;
//
//   final PageController _controller = PageController();
//
//   @override
//   Widget build(BuildContext context) {
//
//     final List<Plants> _plantsList = [
//       Plants(name: 'earth', img: 'assets/images/earth.png'),
//       Plants(name: 'sun', img: 'assets/images/sun.png'),
//       Plants(name: 'mercury', img: 'assets/images/mercury.png'),
//       Plants(name: 'mars', img: 'assets/images/mars.png'),
//       Plants(name: 'jupiter', img: 'assets/images/jupiter.png'),
//       Plants(name: 'saturn', img: 'assets/images/saturn.png'),
//     ];
//     var size = MediaQuery.of(context).size;
//
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           const SizedBox(height: 100),
//           SizedBox(
//             width: size.width,
//             height: size.height * 0.4,
//             child: PageView.builder(
//               controller: _controller,
//               itemCount: _plantsList.length,
//               onPageChanged: (index) {
//                 setState(() {
//                   selectedIndex = index;
//                 });
//               },
//               itemBuilder: (context, index) {
//                 return Center(
//                   child: Image.asset(
//                     _plantsList[index].img,
//                     height: size.height * 0.4,
//                     width: size.width * 0.8,
//                     fit: BoxFit.contain,
//                   ),
//                 );
//               },
//             ),
//           ),
//
//           const SizedBox(height: 200),
//
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               IconButton(
//                 icon: const Icon(Icons.arrow_back, size: 50),
//                 onPressed: () {
//                   if (selectedIndex > 0) {
//                     setState(() {
//                       selectedIndex--;
//                     });
//                     _controller.previousPage(
//                         duration: const Duration(milliseconds: 300),
//                         curve: Curves.ease);
//                   }
//                 },
//               ),
//               IconButton(
//                 icon: const Icon(Icons.arrow_forward, size: 50),
//                 onPressed: () {
//                   if (selectedIndex < _plantsList.length - 1) {
//                     setState(() {
//                       selectedIndex++;
//                     });
//                     _controller.nextPage(
//                         duration: const Duration(milliseconds: 300),
//                         curve: Curves.ease);
//                   }
//                 },
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
