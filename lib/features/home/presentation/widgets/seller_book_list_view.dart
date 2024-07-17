import 'package:book_app/features/home/presentation/widgets/seller_book_tile.dart';
import 'package:flutter/material.dart';

class SellerBookListView extends StatelessWidget {
  SellerBookListView({super.key});
  final List<String> paths = [
    
  "lib/core/assets/images/photo_2024-07-17_04-27-12.jpg",
  "lib/core/assets/images/photo_2024-07-17_04-27-12 (2).jpg",
  "lib/core/assets/images/11.jpg",
  "lib/core/assets/images/photo_2024-07-17_04-27-10.jpg",
  "lib/core/assets/images/photo_2024-07-17_04-27-13.jpg"

    
  ];

  final List<String> title = [
    "Harry Potter",
    "Interesteller",
    "The War Is On",
    "Don't Give Up",
    "Never Say Never"
  ];
  final List<String> author = [
    "Cristiano Ronaldo",
    "Luka Modric",
    "karim benzema",
    "Fede valverdi",
    "Vinisius Jr"
  ];
  final List<String> rates = ["4.9", "4.8", "4.5", "4.2", "4.1"];
  final List<String> number = ["2390", "2631", "2544", "2578", "4521"];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemCount: 5,
      itemBuilder: (context, index) {
        return SellerBookTile(
            image: paths[index],
            name: title[index],
            author: author[index],
            rate: rates[index],
            selNum: number[index]);
      },
    );
  }
}
