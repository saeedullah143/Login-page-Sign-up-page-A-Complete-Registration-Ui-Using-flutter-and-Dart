import 'package:e_lingo/widgets/My%20Widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cool_alert/cool_alert.dart';

import '../Animation/FadeAnimation.dart';
import 'Email  Verification.dart';
import 'Login Page.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: mygradientContainer(
        radiuslogo: 60,
        pagename: "Forgot Password",
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
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 60,
                    ),
                    FadeAnimation(
                      1.4,
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 6.0, left: 12, right: 12.0, bottom: 4.0),
                        child: myTextField(
                          myText: 'Email',
                          fieldIcon: Icon(
                            Icons.account_circle_outlined,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                    ),
                    FadeAnimation(
                      1.6,
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 20, left: 12, right: 12.0, bottom: 4.0),
                        child: myButton(
                            buttonName: "Get Verification Code",
                            buttonpressed: () {
                              {
                                CoolAlert.show(
                                  text:
                                      "We've sent a verification link to your e mail. Please check your inbox.",
                                  context: context,
                                  type: CoolAlertType.success,
                                  barrierDismissible: false,
                                  onConfirmBtnTap: () {
                                    Navigator.of(context).pushAndRemoveUntil(
                                        MaterialPageRoute(
                                      builder: (context) {
                                        return emailVerification();
                                      },
                                    ), (route) => false);
                                  },
                                );
                              }
                            }),
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
