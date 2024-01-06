import 'package:flutter/material.dart';
import 'package:login_page/Screens/home_screen.dart';
import 'package:login_page/Screens/signin_screen.dart';
import 'package:login_page/Utils/colors_utils.dart';
import 'package:login_page/reusable_widget/reusable_widget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _userNameTexController = TextEditingController();
    TextEditingController _emailTextController = TextEditingController();
    TextEditingController _PasswordTexController = TextEditingController();

    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          hexStringToColor("000000"),
          hexStringToColor("323232"),
          hexStringToColor("999999")
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: SingleChildScrollView(
            child: Padding(
          padding: EdgeInsets.fromLTRB(20, 120, 20, 0),
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 20,
              ),
              reusableTextfiled("Enter UserName", Icons.person_outline, false,
                  _userNameTexController),
              const SizedBox(
                height: 20,
              ),
              reusableTextfiled("Enter Email Id", Icons.person_outline, false,
                  _emailTextController),
              const SizedBox(
                height: 20,
              ),
              reusableTextfiled("Enter Password", Icons.lock_outline, true,
                  _PasswordTexController),
              const SizedBox(
                height: 20,
              ),
              signInSignUpButton(context, false, () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              })
            ],
          ),
        )),
      ),
    );
  }
}
