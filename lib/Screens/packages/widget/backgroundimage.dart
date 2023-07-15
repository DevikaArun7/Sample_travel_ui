import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => LinearGradient(colors: [Colors.black,Colors.black12],
      begin: Alignment.bottomCenter,
      end: Alignment.center,
      ).createShader(bounds),
      blendMode: BlendMode.darken,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("C:/Users/HP/Desktop/Sample ui making/sample_ui/images/background img 2.jpeg"),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.black45, 
          BlendMode.darken
          ),
          ),
        ),
      ),
    );
  }
}