import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage image = const AssetImage('images/Untitled.png');
    Image Header = Image(image: image);
    return Container(
      child: Header,
    );
  }
}