import 'package:e_lingo/Home/Home.dart';
import 'package:e_lingo/User%20Registration/Login%20Page.dart';
import 'package:e_lingo/widgets/My%20Widgets.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../Animation/FadeAnimation.dart';

class SignUp extends StatefulWidget {
  @override
  State<SignUp> createState() => SignUpPage();
}

class SignUpPage extends State<SignUp> {
  bool hidden = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: mygradientContainer(pagename: "Create your Account",
      radiuslogo: 50,
        myContainer:
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50))),
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 30,
                    ),
                    FadeAnimation(
                      1.4,
                      Padding(
                          padding: const EdgeInsets.only(
                              top: 6.0, left: 12, right: 12.0, bottom: 4.0),
                          child: myTextField(myText: 'Full name')
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    FadeAnimation(
                      1.4,
                      Padding(
                          padding: const EdgeInsets.only(
                              top: 6.0, left: 12, right: 12.0, bottom: 4.0),
                          child: myTextField(myText: "Email", fieldIcon: Icon(
                              Icons.account_circle_outlined,
                              color: Colors.black54),)
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    FadeAnimation(
                      1.4,
                      Padding(
                          padding: const EdgeInsets.only(
                              top: 6.0, left: 12, right: 12.0, bottom: 4.0),
                          child: mypassword(passwordText: 'Password',)
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    FadeAnimation(
                      1.4,
                      Padding(
                          padding: const EdgeInsets.only(
                              top: 6.0, left: 12, right: 12.0, bottom: 4.0),
                          child: mypassword(passwordText: 'Password',)
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    FadeAnimation(
                      1.6,
                      Padding(
                          padding: const EdgeInsets.only(
                              top: 8.0, left: 12, right: 12.0, bottom: 4.0),
                          child: myButton(
                            buttonName: "Sign up", buttonpressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Home(),),);
                          },)
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Center(
                      child: Container(
                        child: Row(
                          textBaseline: TextBaseline.alphabetic,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            FadeAnimation(
                                1.7,
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text(
                                    "Already have an account?",
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 14,
                                    ),
                                  ),
                                )),
                            FadeAnimation(
                              1.5,
                              Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: mytextbutton(
                                    textButton: 'Login', textpressed: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage(),),);
                                  },)
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}