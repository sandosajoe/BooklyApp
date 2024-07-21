// // import 'package:carousel_slider/carousel_slider.dart';
// // import 'package:flutter/material.dart';

// // class CarouselCard extends StatelessWidget {
// //   final List<String> imagePaths;

// //   const CarouselCard({super.key, required this.imagePaths});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Padding(
// //       padding: const EdgeInsets.only(top: 10),
// //       child: CarouselSlider(
// //         options: CarouselOptions(
// //           height: 300,
// //           enlargeCenterPage: true,
// //           autoPlay: true,
// //           autoPlayInterval: Duration(seconds: 3),
// //           aspectRatio: 16 / 9,
// //           autoPlayCurve: Curves.fastOutSlowIn,
// //           enableInfiniteScroll: true,
// //           autoPlayAnimationDuration: Duration(milliseconds: 800),
// //           viewportFraction: 0.8,
// //         ),

// //         items: imagePaths.map((imagePath) {
// //           return Builder(
// //             builder: (BuildContext context) {
// //               return Container(
// //                 width: MediaQuery.of(context).size.width,
// //                 margin: EdgeInsets.symmetric(horizontal: 5.0),
// //                 child: Image.asset(
// //                   imagePath,
// //                   fit: BoxFit.cover,
// //                 ),
// //               );
// //             },
// //           );
// //         }).toList(),
// //       ),
// //     );
// //   }
// // }

// import 'package:book_app/features/home/presentation/widgets/books_list_view.dart';
// import 'package:flutter/material.dart';

// class CarouselCard extends StatelessWidget {
//   const CarouselCard({
//     super.key,
//     required this.path,
//   });
//   final List<String> path;
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//         itemCount: path.length,
//         itemBuilder: ((context, index) {
//           return CarouselListView();
//         }));

//     // Container(
//     //   margin: const EdgeInsets.symmetric(horizontal: 6),
//     //   height: 224,
//     //   width: 150,
//     //   decoration: BoxDecoration(
//     //     //color: Color.fromARGB(255, 0, 0, 0),
//     //     borderRadius: BorderRadius.circular(14),
//     //     border: Border.all(
//     //       color: Color.fromARGB(255, 29, 41, 30),
//     //       width: 1.3,
//     //     ),
//     //     image: DecorationImage(image: AssetImage("$path"), fit: BoxFit.fill),
//     //   ),
//     // );
//   }
// }

import 'package:flutter/material.dart';

class BookCard extends StatelessWidget {
  
  const BookCard({super.key, required this.imagePath});
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Container(
       margin: const EdgeInsets.only(top: 18 , left: 6),
        height: 224,
        width: 150,
         decoration: BoxDecoration(
          
          borderRadius: BorderRadius.circular(14),
          border: Border.all(
            color: Color.fromARGB(193, 29, 30, 29),
            width: 1.3,
          ),
          image: DecorationImage(
              image:AssetImage("$imagePath"),  fit: BoxFit.fill),
          )
          
    );
  }
}
