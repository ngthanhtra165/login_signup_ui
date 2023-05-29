import 'package:flutter/material.dart';
import 'package:signup_login_ui/constants.dart';
import '../../../components/already_have_account_checked.dart';
import '../../SignUp/sign_up_screen.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
    super.key,
  });

  @override
  State<LoginForm> createState() {
    return _LoginForm();
  }
}

class _LoginForm extends State<LoginForm> {
  bool hide = true;
  String emailInput = "", passwordInput = "";

  // when tap on signup button
  void onTapSignUpButton() {
    Navigator.push(
        context, MaterialPageRoute(builder: (ctx) => const SignUpScreen()));
  }

  // when tap on login button , check whether it is valid or not
  void onTapLoginButton() {
    if (emailInput != "" && passwordInput != "") {
      // login successfully
      // add rive animation
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("Alert Dialog"),
          content: Text("Login Sucessfully"),
          actions: [
            TextButton(
              child: Text("Close"),
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
          title: Text("Alert Dialog"),
          content: Text("Login fail ! Please login again"),
          actions: [
            TextButton(
              child: Text("Close"),
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
            height: defaultPadding,
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
                        print(hide);
                      });
                    },
                    icon: const Icon(
                      Icons.visibility,
                    ),
                  ),
                )),
          ),
          const SizedBox(
            height: defaultPadding,
          ),
          SizedBox(
            height: 60,
            width: 310,
            child: ElevatedButton(
              onPressed: onTapLoginButton,
              style: ElevatedButton.styleFrom(backgroundColor: kPrimaryColor),
              child: Text(
                'Login'.toUpperCase(),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: defaultPadding,
          ),
          AlreadyHaveAccountChecked(press: onTapSignUpButton),
        ],
      ),
    );
  }
}
