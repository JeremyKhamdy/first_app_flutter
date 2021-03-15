import 'package:flutter/material.dart';
import 'package:social_app/Screens/Login/components/background.dart';
import 'package:social_app/Screens/Main/main_screen.dart';
import 'package:social_app/Screens/Register/register_screen.dart';
import 'package:social_app/components/already_have_an_account_check.dart';
import 'package:social_app/components/rounded_button.dart';
import 'package:social_app/components/rounded_input_field.dart';
import 'package:social_app/components/rounded_password_field.dart';
import 'package:social_app/constants.dart';


class Body extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'SIGN IN .',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 38
              ),
            ),
            RoundedInputField(
              hintText: "Enter your email",
              icon: Icons.person,
              onChanged : (value){},
            ),
            RoundedPasswordField(
              onChanged: (value){},
            ),
            RoundedButton(
              text: "LOGIN",
              textColor: Colors.white,
              color: kPrimaryLightColor,
              press: (){
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => MainScreen()),
                    (Route<dynamic> route) => false,
                );
              },
            ),
            AlreadyHaveAnAccountCheck(
              press: (){
                Navigator.pushReplacement(context,
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
      ),
    );
  }
}

