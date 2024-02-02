import 'package:cool_alert/cool_alert.dart';
import 'package:e_lingo/User%20Registration/Forgot%20Password.dart';
import 'package:e_lingo/User%20Registration/Update%20Password.dart';
import 'package:e_lingo/widgets/My%20Widgets.dart';
import 'package:flutter/material.dart';

import '../Animation/FadeAnimation.dart';

class emailVerification extends StatelessWidget {
  const emailVerification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: mygradientContainer(
        pagename: 'Email Verification',
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
                          child: myNumberField(
                            myText: 'Enter Your 6 Digit Number',
                          )),
                    ),
                    FadeAnimation(
                      1.6,
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 20, left: 12, right: 12.0, bottom: 4.0),
                        child: myButton(
                            buttonName: "Check Verification",
                            buttonpressed: () {
                              {
                                CoolAlert.show(
                                  text: "Email Verified",
                                  context: context,
                                  type: CoolAlertType.success,
                                  barrierDismissible: false,
                                  onConfirmBtnTap: () {
                                    Navigator.of(context).pushAndRemoveUntil(
                                        MaterialPageRoute(
                                      builder: (context) {
                                        return updatePassword();
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
