import 'package:flutter/material.dart';
import 'package:social_app/Screens/Login/login_screen.dart';
import 'package:social_app/Screens/Register/register_screen.dart';
import 'package:social_app/Screens/Welcome/components/background.dart';
import 'package:social_app/components/rounded_button.dart';
import 'package:social_app/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total width and height of our screen
    return Background(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                  "SOCIAL APP",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )
              ),
              SizedBox(
                height: size.height * 0.03
              ),
              RoundedButton(
                text: "LOGIN",
                press: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context){
                        return LoginScreen();
                      }
                    ),
                  );
                },
              ),
              RoundedButton(
                text: "SIGN UP",
                color: kPrimaryLightColor,
                press: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context){
                        return RegisterScreen();
                      }
                    ),
                  );
                },
              ),
          ],
        ),
      )
    );
  }
}



