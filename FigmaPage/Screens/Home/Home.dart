import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample/FigmaPage/Screens/SpashPage/SplashPage.dart';
import 'package:sample/FigmaPage/UtilsPage/Utils.dart';

class ScreenPage extends StatefulWidget {
  const ScreenPage({super.key});

  @override
  State<ScreenPage> createState() => _HomePageState();
}

class _HomePageState extends State<ScreenPage> {
  late Future<void> _future;
  @override
  void initState() {
    super.initState();
    _future = Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => SplashPage()),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(FigmaImage.profilePhoto)
          ],
        ),
      ),
    );
  }
}
