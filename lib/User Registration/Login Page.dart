import 'package:e_lingo/User%20Registration/Forgot%20Password.dart';
import 'package:e_lingo/User%20Registration/Sign%20Up.dart';
import 'package:flutter/material.dart';
import '../Animation/FadeAnimation.dart';
import '../Home/Home.dart';
import '../widgets/My Widgets.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: mygradientContainer(
            radiuslogo: 60,
            pagename: "Login to your Account",
            myContainer: Expanded(
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50))),
                    child: SingleChildScrollView(
                        child: Padding(
                            padding: EdgeInsets.all(15),
                            child: Column(children: <Widget>[
                              SizedBox(
                                height: 30,
                              ),
                              FadeAnimation(
                                1.4,
                                Padding(
                                    padding: const EdgeInsets.only(
                                        top: 6.0,
                                        left: 12,
                                        right: 12.0,
                                        bottom: 4.0),
                                    child: myTextField(
                                      myText: 'Username or Email',
                                      fieldIcon: Icon(
                                        Icons.account_circle_outlined,
                                        color: Colors.black54,
                                      ),
                                    )),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              FadeAnimation(
                                1.4,
                                Padding(
                                    padding: const EdgeInsets.only(
                                        top: 6.0,
                                        left: 12,
                                        right: 12.0,
                                        bottom: 4.0),
                                    child: mypassword(
                                      passwordText: 'Password',
                                    )),
                              ),
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    FadeAnimation(
                                      1.5,
                                      Padding(
                                          padding:
                                              const EdgeInsets.only(right: 15),
                                          child: mytextbutton(
                                            textpressed: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          ForgotPassword()));
                                            },
                                            textButton: 'Forgot Password',
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                              FadeAnimation(
                                1.6,
                                Padding(
                                    padding: const EdgeInsets.only(
                                        top: 8.0,
                                        left: 12,
                                        right: 12.0,
                                        bottom: 4.0),
                                    child: myButton(
                                      buttonName: 'Login',
                                      buttonpressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => Home()));
                                      },
                                    )),
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
                                            padding:
                                                const EdgeInsets.only(top: 10),
                                            child: Text(
                                              "Don't have an account?",
                                              style: TextStyle(
                                                color: Colors.black54,
                                                fontSize: 14,
                                              ),
                                            ),
                                          )),
                                      FadeAnimation(
                                        1.5,
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 10),
                                          child: mytextbutton(
                                              textButton: 'Sign up',
                                              textpressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        SignUp(),
                                                  ),
                                                );
                                              }),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              FadeAnimation(
                                  1.7,
                                  Center(
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Text(
                                        "-OR-",
                                        style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                  )),
                              FadeAnimation(
                                1.7,
                                Center(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Text(
                                      "Sign in with",
                                      style: TextStyle(color: Colors.black54),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              FadeAnimation(
                                1.8,
                                OutlinedButton(
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all(Colors.white),
                                    shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(40),
                                      ),
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 10, 0, 10),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Image(
                                          image: AssetImage(
                                              "assets/google_logo.png"),
                                          height: 35.0,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 10),
                                          child: Text(
                                            'Sign in with Google',
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black54,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],),),),),),),);
  }
}
