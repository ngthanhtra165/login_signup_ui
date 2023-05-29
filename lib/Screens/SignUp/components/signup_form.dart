import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:signup_login_ui/constants.dart';
import '../../../components/already_have_account_checked.dart';
import 'or_and_divider.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({
    super.key,
  });

  @override
  State<SignUpForm> createState() {
    return _SignUpForm();
  }
}

class _SignUpForm extends State<SignUpForm> {
  bool hide = true;
  String emailInput = "", passwordInput = "";

  // when tap on signup button
  void onTapLoginButton() {
    Navigator.of(context).pop();
  }

  // when tap on login button , check whether it is valid or not
  void onTapSignUpButton() {
    if (emailInput != "" && passwordInput != "") {
      // login successfully
      // add rive animation
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text("Alert Dialog"),
          content: const Text("Sign up Sucessfully"),
          actions: [
            TextButton(
              child: const Text("Close"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          ],
        ),
      );
    } else {
      // login fail hihi

      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text("Alert Dialog"),
          content: const Text("Sign up fail ! Please Sign Up again"),
          actions: [
            TextButton(
              child: const Text("Close"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          ],
        ),
      );
    }
  }

  void onChangePassword(String text) {
    passwordInput = text;
  }

  void onChangedEmail(String text) {
    emailInput = text;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            onChanged: onChangedEmail,
            cursorColor: kPrimaryColor,
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            decoration: const InputDecoration(
              hintText: 'Your email',
              prefixIcon: Padding(
                padding: EdgeInsets.all(defaultPadding),
                child: Icon(
                  Icons.person,
                  color: kPrimaryColor,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: defaultPadding/2,
          ),
          TextFormField(
            onChanged: onChangePassword,
            cursorColor: kPrimaryColor,
            keyboardType: TextInputType.emailAddress,
            obscureText: hide,
            decoration: InputDecoration(
                hintText: 'Your password',
                prefixIcon: const Padding(
                  padding: EdgeInsets.all(defaultPadding),
                  child: Icon(
                    Icons.lock,
                    color: kPrimaryColor,
                  ),
                ),
                suffixIcon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        hide = !hide;
                      });
                    },
                    icon: const Icon(
                      Icons.visibility,
                    ),
                  ),
                )),
          ),
          const SizedBox(
            height: defaultPadding/2,
          ),
          SizedBox(
            height: 60,
            width: 310,
            child: ElevatedButton(
              onPressed: onTapSignUpButton,
              style: ElevatedButton.styleFrom(backgroundColor: kPrimaryColor),
              child: const Text(
                'Sign Up',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: defaultPadding/2,
          ),
          AlreadyHaveAccountChecked(
            press: onTapLoginButton,
            isLogin: false,
          ),
          const OrAndDivider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 2,
                      color: kPrimaryLightColor,
                    )),
                child: SvgPicture.asset(
                  'assets/icons/facebook.svg', color: kPrimaryColor,
                  height: 20,
                  width: 20,
                ),
              ),
               Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 2,
                      color: kPrimaryLightColor,
                    )),
                child: SvgPicture.asset(
                  'assets/icons/google-plus.svg',
                  height: 20,
                  width: 20,
                  color: kPrimaryColor,
                ),
              ),
               Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 2,
                      color: kPrimaryLightColor,
                    )),
                child: SvgPicture.asset(
                  'assets/icons/twitter.svg',
                  height: 20,
                  width: 20,
                  color: kPrimaryColor,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
