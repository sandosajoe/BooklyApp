import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SellerBookTile extends StatelessWidget {
  const SellerBookTile({super.key, required this.image, required this.name, required this.author, required this.rate, required this.selNum});
  final String image;
  final String name;
  final String author;
  final String rate;
  final String selNum;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 12,right: 12,top: 16),
      height: 120,
      width: double.infinity,
      child: Row(
        children: [
          
          ClipRRect(
            borderRadius: BorderRadius.circular(9),
            child: Image.asset("$image")),
          SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "$name",
                style: TextStyle(color: Colors.white, fontSize: 19),
                softWrap: true,
                textAlign: TextAlign.start,
              ),
              Text(
                "$author",
                style: TextStyle(color: Colors.white, fontSize: 13),
                softWrap: true,
                textAlign: TextAlign.start,
              ),
              Row(
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "19.99E",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    width: 36,
                  ),
                  Icon(
                    Icons.star,
                    color: const Color.fromARGB(255, 188, 170, 8),
                  ),
                  Text(
                    "$rate",
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                  Text(
                    "($selNum)",
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
