import 'package:flutter/material.dart';
import 'package:sample/FigmaPage/Screens/SignInPage/SignIn_Page.dart';
import 'package:sample/FigmaPage/UtilsPage/Utils.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            children: [
              _buildPage(
                image: FigmaImage.splashPhoto,
                title: 'Choose Products',
                description: 'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
              ),
              _buildPage(
                image: FigmaImage.splashTwoPhoto,
                title: 'Make Payments',
                description: 'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
              ),
              _buildPage(
                image: FigmaImage.splashThrPhoto,
                title: 'Get Your Address',
                description: 'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
              ),
            ],
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: Container(
              width: 160,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignInPage()),
                  );
                },
                child: Text("Get Started", style: TextStyle(fontSize: 22 , fontWeight: FontWeight.bold, color: Color(0xFFF83758)),),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPage({required String image, required String title, required String description}) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image),
          SizedBox(height: 2),
          Text(
            title,
            style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                description,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}