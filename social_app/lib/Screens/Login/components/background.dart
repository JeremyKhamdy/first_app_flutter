import 'package:flutter/material.dart';
import 'package:social_app/constants.dart';


class Background extends StatelessWidget {
  final Widget child;

  const Background({
    Key key,
    this.child}
  ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      color: kPrimaryColor,
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          child,
        ],
      ),
    );
  }
}
