import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.asset("assets/images/Group 26.png"),
      ),
    );
  }
}
