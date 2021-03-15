import 'package:flutter/material.dart';
import 'package:social_app/Screens/Main/components/background.dart';

class Body extends StatelessWidget {
  final Widget content;

  const Body({Key key, this.content}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Background(
      child: content
    );
  }
}
