import 'package:book_app/features/splash/presentation/views/widgets/splash_body.dart';
import 'package:flutter/material.dart';

class splashScreen extends StatelessWidget {
  const splashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        // backgroundColor: Color.fromARGB(255, 8, 23, 35),
        backgroundColor: Color(0xff100B20),
        body: splashBody());
  }
}
