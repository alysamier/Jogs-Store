import 'package:flutter/material.dart';
import 'package:jogs_store/utils/constants.dart';
import 'package:jogs_store/utils/size_config.dart';
import 'package:progress_state_button/progress_button.dart';
import 'package:jogs_store/views/sign_in/SignInScreen.dart';

class SignInMessage extends StatefulWidget {
  @override
  _SignInMessageState createState() => _SignInMessageState();
}

class _SignInMessageState extends State<SignInMessage> {
  ButtonState _stateTextWithIcon = ButtonState.idle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 30,
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      child: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Column(
            children: [
              Text(
                'You need to sign-in fIrst',
                style: TextStyle(
                    fontFamily: 'PantonBoldItalic',
                    fontSize: getProportionateScreenHeight(17),
                    color: Colors.grey.shade600),
              ),
              SizedBox(height: getProportionateScreenHeight(25)),
              SignInButton(),
            ],
          ),
        ],
      ),
    );
  }

  Widget SignInButton() {
    return ElevatedButton(
      child: Text(
        "Sign-In",
        style: TextStyle(
            color: Color(0xffeeecec),
            fontSize: 17,
            fontFamily: 'PantonBoldItalic'),
      ),
      style: ButtonStyle(
          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
            EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(125),
              vertical: getProportionateScreenWidth(12),
            ),
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
          backgroundColor: MaterialStateProperty.all<Color>(PrimaryColor),
          overlayColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
            return null;
          })),
      onPressed: () {
        Navigator.pop(context);
        Navigator.pushNamed(context, SignInScreen.routeName);
      },
    );
  }
}
