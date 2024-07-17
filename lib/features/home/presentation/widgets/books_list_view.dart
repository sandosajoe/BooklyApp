// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';

// class CarouselListView extends StatelessWidget {
//    CarouselListView({super.key});
//   final List <String>images = [
//     "lib/core/assets/images/1cc0b0681355434bfe33984fc417eeee.jpg",
//     "lib/core/assets/images/1e5f1c4c5af42e6e10bb7c2cb3692193.jpg",
//     "lib/core/assets/images/3bb50fa429948195dbf8fa35df6a9e92.jpg",
//     "lib/core/assets/images/3ce3b2eec19b3714029d2fef95aff293.jpg",
//     "lib/core/assets/images/3d1ac62c8622e1ba0a6fc6ac879b82f8.jpg",
//     "lib/core/assets/images/3e7459f147ab5e85f0257bf9f79e651c.jpg",
//     "lib/core/assets/images/4a82252fd3d89e2310f52b476bf02608.jpg",

//   ];
//   @override
//   Widget build(BuildContext context) {
//     return CarouselSlider(
//       options: CarouselOptions(
//             height: 224.0,
//             enlargeCenterPage: true,
//             autoPlay: true,
//             autoPlayInterval: Duration(seconds: 3),
//             aspectRatio: 16 / 9,
//             autoPlayCurve: Curves.fastOutSlowIn,
//             enableInfiniteScroll: true,
//             autoPlayAnimationDuration: Duration(milliseconds: 800),
//             viewportFraction: 0.8,
//           ),
//           items:  images.map((imagePath) {
//             return Builder(
//               builder: (BuildContext context) {
//                 return Container(
//                   width: MediaQuery.of(context).size.width,
//                   margin: EdgeInsets.symmetric(horizontal: 5.0),
//                   child: Image.asset(
//                     imagePath,
//                     fit: BoxFit.cover,
//                   ),
//                 );
//               },
//             );
//           }).toList(),
//         );

//   }
// }

// import 'package:book_app/features/home/presentation/widgets/books_card.dart';
// import 'package:flutter/material.dart';

// class CarouselListView extends StatelessWidget {
//   CarouselListView({super.key});

//  final List <String>images = [
//     "lib/core/assets/images/1cc0b0681355434bfe33984fc417eeee.jpg",
//     "lib/core/assets/images/1e5f1c4c5af42e6e10bb7c2cb3692193.jpg",
//      "lib/core/assets/images/3bb50fa429948195dbf8fa35df6a9e92.jpg",
//      "lib/core/assets/images/3ce3b2eec19b3714029d2fef95aff293.jpg",
//      "lib/core/assets/images/3d1ac62c8622e1ba0a6fc6ac879b82f8.jpg",
//     "lib/core/assets/images/3e7459f147ab5e85f0257bf9f79e651c.jpg",
//     "lib/core/assets/images/4a82252fd3d89e2310f52b476bf02608.jpg",

//    ];
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 224,

//       child: CarouselCard(imagePaths: images));
//   }
// }

// import 'package:book_app/features/home/presentation/widgets/books_card.dart';
// import 'package:flutter/material.dart';

// class CarouselListView extends StatelessWidget {
//   CarouselListView({super.key});

//   final List<String> images = [
//     "lib/core/assets/images/11.jpg",
//     "lib/core/assets/images/11.jpg",
//     "lib/core/assets/images/11.jpg",
//     "lib/core/assets/images/11.jpg",
//     "lib/core/assets/images/11.jpg"
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return CarouselCard(path: images);
//   }
// }

import 'package:book_app/features/home/presentation/widgets/books_card.dart';
import 'package:flutter/material.dart';

class BookListView extends StatelessWidget {
  BookListView({super.key});
  final List<String> paths = [
 "lib/core/assets/images/photo_2024-07-17_04-27-10.jpg",
 "lib/core/assets/images/photo_2024-07-17_04-27-10.jpg",
 "lib/core/assets/images/photo_2024-07-17_04-27-10.jpg",
 "lib/core/assets/images/photo_2024-07-17_04-27-10.jpg",
 "lib/core/assets/images/photo_2024-07-17_04-27-10.jpg",

  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:224 ,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: paths.length,
        itemBuilder: (context, index) {
          return BookCard(imagePath: paths[index]);
        },
      ),
    );
  }
}
