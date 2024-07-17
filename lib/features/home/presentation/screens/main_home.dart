import 'package:book_app/features/home/presentation/widgets/books_list_view.dart';
import 'package:book_app/features/home/presentation/widgets/seller_book_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class test extends StatelessWidget {
  const test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff100B20),
      appBar:AppBar(
          title: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
            children: [
              Image.asset(
                'lib/core/assets/images/logo.png', // Replace with the path to your image asset
                height: 32.0,
              ),
              SizedBox(width: 16.0),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    //hintText: 'Search',
                    border: InputBorder.none,
                    suffixIcon: Icon(Icons.search ,color: Colors.white,),
                  ),
                ),
              ),
            ],
                    ),
          ),
        backgroundColor: Colors.transparent,
      ),

body: CustomScrollView(slivers: [
  SliverToBoxAdapter(child: BookListView()),
   SliverToBoxAdapter(child:
   Padding(
     padding: const EdgeInsets.only(left: 12,top: 18,bottom: 12),
     child: Text("Best Seller" , style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold ,color: Colors.white),),
   )
   ),
 SliverToBoxAdapter(child: SellerBookListView()),
],),

// body:Column(children: [
//   BookListView(),
//   Expanded(child: SellerBookListView())
// ],)


//body: SellerBookListView(),
      //body: BookListView()


    );
  }
}