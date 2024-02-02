import 'package:e_lingo/widgets/My%20Widgets.dart';
import 'package:flutter/material.dart';
import 'package:cool_alert/cool_alert.dart';

import '../Animation/FadeAnimation.dart';
import 'Login Page.dart';

class updatePassword extends StatefulWidget {
  const updatePassword({super.key});

  @override
  State<updatePassword> createState() => _updatePasswordState();
}

class _updatePasswordState extends State<updatePassword> {
  bool hidden = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: mygradientContainer(
        pagename: 'Update your Password',
        radiuslogo: 60,
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
                        child: mypassword(passwordText: 'New Password'),
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
                        child: mypassword(passwordText: 'Confirm Password'),
                      ),
                    ),
                    FadeAnimation(
                      1.6,
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 20, left: 12, right: 12.0, bottom: 4.0),
                        child: myButton(
                          buttonName: 'Confirm',
                          buttonpressed: () {
                            CoolAlert.show(
                              text:
                                  "Your Password has been succesfully updated",
                              context: context,
                              type: CoolAlertType.success,
                              barrierDismissible: false,
                              onConfirmBtnTap: () {
                                Navigator.of(context).pushAndRemoveUntil(
                                    MaterialPageRoute(
                                  builder: (context) {
                                    return LoginPage();
                                  },
                                ), (route) => false);
                              },
                            );
                          },
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
