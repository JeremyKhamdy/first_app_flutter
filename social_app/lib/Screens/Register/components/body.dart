import 'package:flutter/material.dart';
import 'package:social_app/Screens/Login/login_screen.dart';
import 'package:social_app/Screens/Register/components/background.dart';
import 'package:social_app/components/already_have_an_account_check.dart';
import 'package:social_app/components/rounded_button.dart';
import 'package:social_app/components/rounded_input_field.dart';
import 'package:intl/intl.dart';
import 'package:social_app/components/rounded_password_field.dart';
import 'package:social_app/constants.dart';
class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  DateTime _dateTime;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("SIGN UP .", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 38),),
                SizedBox(
                    width: size.height * 0.03
                ),
                Icon(Icons.assignment, color: Colors.white,),
              ],
            ),
            RoundedInputField(
              icon: Icons.person,
              hintText: "Name",
              onChanged: (value){},
            ),
            RoundedInputField(
              icon: Icons.person,
              hintText: "Surname",
              onChanged: (value){},
            ),
            RoundedInputField(
              icon: Icons.email,
              hintText: "Email",
              onChanged: (value){},
            ),
            RoundedPasswordField(
              onChanged: (value){},
            ),
            RoundedInputField(
              icon: Icons.calendar_today,
              hintText: _dateTime == null ?  "Select your birthdate" : DateFormat('yyyy-MM-dd').format(_dateTime).toString(),
              onChanged: (value){},
              enabled: false,
              onTap: (){
                showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1950),
                    lastDate: DateTime(2050)
                ).then((date) => {
                  setState((){
                    _dateTime = date;
                  })
                });
              },
            ),
            RoundedButton(
              text: "Sign Up",
              color: kPrimaryColor,
              textColor: Colors.white,
              press: (){
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context){
                      return LoginScreen();
                    }
                  ),
                );
              },
            ),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: (){
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context){
                      return LoginScreen();
                    }
                  )
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
