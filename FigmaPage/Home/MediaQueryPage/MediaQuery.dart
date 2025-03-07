import 'package:flutter/material.dart';

class MediaQueryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Accessing MediaQuery data
    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;
    final screenHeight = mediaQuery.size.height;
    final isPortrait = mediaQuery.orientation == Orientation.portrait;

    return Scaffold(
      appBar: AppBar(title: Text('Media Query Example')),
      body: Center(
        child: Container(
          width: isPortrait ? screenWidth * 0.8 : screenWidth * 0.5,
          height: isPortrait ? screenHeight * 0.4 : screenHeight * 0.6,
          color: Colors.blue,
          child: Center(
            child: Text(
              'Screen Width: ${screenWidth.toStringAsFixed(2)}\n'
              'Screen Height: ${screenHeight.toStringAsFixed(2)}\n'
              'Orientation: ${isPortrait ? "Portrait" : "Landscape"}',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
