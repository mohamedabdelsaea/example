// import 'package:flutter/material.dart';
//
// class TestSelectedImages extends StatelessWidget {
//   const TestSelectedImages({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final List<String> _Lists = [
//       'assets/images/earth.png',
//       'assets/images/sun.png',
//       'assets/images/mercury.png',
//       'assets/images/mars.png',
//       'assets/images/jupiter.png',
//       'assets/images/saturn.png'
//     ];
//     var _selectedIndex = 0;
//     var size = MediaQuery.of(context).size;
//
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           CarouselSlider(
//             items: _Lists.map((item) => Container(
//               margin: EdgeInsets.all(5.0),
//               width: size.width*1,
//               child: ClipRRect(
//                 borderRadius: BorderRadius.circular(10.0),
//                 child: Image.asset(
//                   item,
//                   width: double.infinity,
//                 ),
//               ),
//             )).toList(),
//             options: CarouselOptions(
//               height: 400,
//               aspectRatio: 16/9,
//               viewportFraction: 0.9,
//               initialPage: 0,
//               enableInfiniteScroll: true,
//               reverse: false,
//               autoPlay: true,
//               autoPlayInterval: Duration(seconds: 3),
//               autoPlayAnimationDuration: Duration(milliseconds: 800),
//               autoPlayCurve: Curves.fastOutSlowIn,
//               enlargeCenterPage: true,
//               enlargeFactor: 0.3,
//               onPageChanged: (index, reason) {
//                 _selectedIndex = index;
//               },
//               scrollDirection: Axis.horizontal,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
