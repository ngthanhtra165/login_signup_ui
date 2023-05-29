import 'package:flutter/material.dart';
import 'package:signup_login_ui/components/background.dart';
import 'package:signup_login_ui/constants.dart';
import 'components/login_sreen_top_image.dart';
import 'components/login_form.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Background(
      bottomImage: 'assets/images/login_bottom.png',
      child: Column(
        children: [
          LoginScreenTopImage(),
          SizedBox(
            height: defaultPadding * 2,
          ),
          Row(
            children: [
              Spacer(),
              Expanded(
                flex: 8,
                child: LoginForm(),
              ),
              Spacer(),
            ],
          )
        ],
      ),
    );
  }
}

