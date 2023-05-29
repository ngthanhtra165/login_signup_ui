import 'package:flutter/material.dart';
import 'package:signup_login_ui/constants.dart';

class LoginAndSignUpBtn extends StatelessWidget {
  const LoginAndSignUpBtn({
    super.key,
    required this.tapOnLoginButton
  });

  final Function() tapOnLoginButton;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 65,
          width: 300,
          child: ElevatedButton(
            onPressed: tapOnLoginButton,
            style: ElevatedButton.styleFrom(
                backgroundColor: kPrimaryColor),
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
        SizedBox(
          height: 65,
          width: 300,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: kPrimaryLightColor),
            child: Text(
              'Sign up'.toUpperCase(),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        )
      ],
    );
  }
}
