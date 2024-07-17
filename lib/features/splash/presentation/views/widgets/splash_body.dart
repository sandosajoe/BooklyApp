import 'package:book_app/features/home/presentation/screens/main_home.dart';
import 'package:flutter/material.dart';
import 'dart:async';
class splashBody extends StatefulWidget {
  const splashBody({super.key});

  @override
  State<splashBody> createState() => _splashBodyState();
}

class _splashBodyState extends State<splashBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
     startTimer();
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    slidingAnimation = Tween<Offset>(begin: Offset(0, 15), end: Offset.zero)
        .animate(animationController);
    animationController.forward();
  }
void startTimer() {
    Timer(Duration(seconds: 7), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => test()));
    });
  }
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      //crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset("lib/core/assets/images/logo.png"),
        Center(
            child: SlideTransition(
          position: slidingAnimation,
          child: Text(
            "Read Free Books",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white, fontSize: 13),
          ),
        ))
      ],
    );
  }
}
