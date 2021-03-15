import 'package:flutter/material.dart';
import 'package:social_app/constants.dart';

class Message extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      decoration: BoxDecoration(
        color: kPrimaryLightColor
      ),
      child: Column(

      ),
    );
  }
}
