import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../Animation/FadeAnimation.dart';

class myTextField extends StatelessWidget {
  final String myText;
  final Icon? fieldIcon;
  const myTextField({required this.myText, this.fieldIcon});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
                color: Colors.indigo, blurRadius: 15, offset: Offset(0, 10))
          ]),
      child: TextField(
        cursorColor: Colors.black,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: Colors.black, style: BorderStyle.solid),
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
          ),
          hintText: myText,
          hintStyle: TextStyle(color: Colors.grey),
          prefixIcon:fieldIcon,
        ),
      ),
    );
  }
}
class myNumberField extends StatelessWidget {
  final String myText;
  final Icon? fieldIcon;
  const myNumberField({required this.myText, this.fieldIcon});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
                color: Colors.indigo, blurRadius: 15, offset: Offset(0, 10))
          ]),
      child: TextField(
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly
            ],
        cursorColor: Colors.black,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:
            BorderSide(color: Colors.black, style: BorderStyle.solid),
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
          ),
          hintText: myText,
          hintStyle: TextStyle(color: Colors.grey),
          prefixIcon:fieldIcon,
        ),
      ),
    );
  }
}


class mypassword extends StatefulWidget {
  final String passwordText;
  const mypassword({required this.passwordText});

  @override
  State<mypassword> createState() => _mypasswordState();
}

class _mypasswordState extends State<mypassword> {
  bool hidden=true;
  void ViewPassward() {
    setState(() {
      hidden = !hidden;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
                color: Colors.indigo, blurRadius: 15, offset: Offset(0, 10))
          ]),
      child: TextField(
        cursorColor: Colors.black,
        obscureText: hidden,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: Colors.black, style: BorderStyle.solid),
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
          ),
          hintText: widget.passwordText,
          hintStyle: TextStyle(color: Colors.grey),
          prefixIcon: Icon(Icons.lock_outline_rounded, color: Colors.black54),
          suffixIcon: InkWell(
            onTap: ViewPassward,
            child: Icon(
              hidden
                  ? Icons.visibility_off_outlined
                  : Icons.visibility_outlined,
              color: Colors.black54,
            ),
          ),
        ),
      ),
    );
  }
}

class mytextbutton extends StatelessWidget {
  final String textButton;
  final VoidCallback textpressed;
  const mytextbutton({required this.textpressed, required this.textButton});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        onPressed: textpressed,
        child: Text(
          textButton,
          style: TextStyle(
              color: Colors.indigo,
              fontSize: 14,
              fontWeight: FontWeight.bold,
              decorationStyle: TextDecorationStyle.solid),
        ),
      ),
    );
  }
}

class myButton extends StatelessWidget {
  final String buttonName;
  final VoidCallback buttonpressed;
  const myButton({required this.buttonName,required this.buttonpressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 45,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(30.0),
        gradient: LinearGradient(
          colors: [
            Colors.indigo,
            Colors.tealAccent
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.white70,
            blurRadius: 10,
            offset: Offset(10, 10),
          ),
        ],
      ),
      child: MaterialButton(
        elevation: 0.7,
        onPressed: buttonpressed ,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0)),
        child: Text(
          buttonName,
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: "OpenSaans"),
        ),
        highlightColor: Colors.tealAccent,
      ),
    );
  }
}
class myimageButton extends StatefulWidget {
  final String imagepath;
  const myimageButton({required this.imagepath});
  @override
  State<myimageButton> createState() => _myimageButtonState();
}

class _myimageButtonState extends State<myimageButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color:Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.indigo,
            blurRadius: 15,
            offset: Offset(0, 10),
          ),
        ],
      ),
      child: Image.asset(widget.imagepath,
        fit: BoxFit.contain,
      ),
    );
  }
}
class mygradientContainer extends StatelessWidget {
  final Widget myContainer;
  final String pagename;
  final double radiuslogo;
  const mygradientContainer({required this.pagename,required this.radiuslogo,required this.myContainer});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          colors: [
            Colors.indigo,
            Colors.tealAccent,
          ],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 40,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  radius: radiuslogo,
                  backgroundImage: AssetImage("assets/speakle.png"),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              FadeAnimation(
                  1,
                  Center(
                    child: Text(
                      "Your App Name",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: "Open Saans",
                          fontWeight: FontWeight.bold),
                    ),
                  )),
            ],
          ),
          SizedBox(height: 20),
          FadeAnimation(
            1.3,
            Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  pagename,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ),
          myContainer
        ],
      ),
    );
  }
}
