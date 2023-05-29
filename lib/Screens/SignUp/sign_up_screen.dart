import 'package:flutter/material.dart';
import 'package:signup_login_ui/components/background.dart';
import 'package:signup_login_ui/constants.dart';
import 'components/signup_screen_image_top.dart';
import 'components/signup_form.dart';
class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Background(
      topImage: 'assets/images/signup_top.png',
      child: Column(
        children: [
          SignupScreenTopImage(),
           SizedBox(
            height: defaultPadding/2,
          ),
          Expanded(
            child: Row(
              children: [
                Spacer(),
                Expanded(
                  flex: 8,
                  child: SignUpForm(),
                ),
                Spacer(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

