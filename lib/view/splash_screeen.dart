import 'package:flutter/material.dart';
import 'package:orgami/utils/text_style.dart';
import 'package:orgami/view/select_type.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 5)).then((value) =>
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => SelectUserPage()),
            (route) => false));

    return Scaffold(
      body: Center(child: Text("ORGAmi", style: splashTxt)),
      // drawer:const Drawer(
      //   child: Text("data"),
      // ),
    );
  }
}
