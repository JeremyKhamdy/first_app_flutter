import 'package:flutter/material.dart';
import 'package:social_app/constants.dart';

class CardContainer extends StatelessWidget {
  final String name, subject, content;
  final Image image;

  const CardContainer({
    Key key,
    this.name,
    this.subject,
    this.content,
    this.image
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      // height: size.height * 0.3,
      margin: EdgeInsetsDirectional.only(top: 2.5, start: 5.0, end: 5.0, bottom: 2.5),
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      decoration: BoxDecoration(
        border: Border.symmetric(horizontal: BorderSide(color: kPrimaryColor), vertical: BorderSide(color: kPrimaryColor)),
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            offset: Offset(1.0, 1.0),
            blurRadius: 1.0,
            spreadRadius: 1.0
          )
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.amber,
                  ),
                ],
              ),
              SizedBox(
                  width: size.width * 0.03
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,

                        ),
                      ),
                      SizedBox(
                          width: size.width * 0.35
                      ),
                      Text(
                        subject,
                        style: TextStyle(
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  Row(
                    children: [
                      // Column(
                      //   children: [
                      //     Text(
                      //       content,
                      //       style: TextStyle(
                      //
                      //       ),
                      //     ),
                      //   ],
                      // )
                      Text(
                        'rrrrr',
                        style: TextStyle(),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
