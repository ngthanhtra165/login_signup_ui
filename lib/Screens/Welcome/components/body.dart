import 'package:flutter/material.dart';
import '../../../components/background.dart';
import 'welcome_image_and_title.dart';
import 'login_and_signup_btn.dart';
import '../../Login/login_screen.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    // when you tap on login button
    void tapOnLoginButton() {
      Navigator.push(
          context, MaterialPageRoute(builder: (ctx) => const LoginScreen()));
    }

    return Background(
      child: SafeArea(
        child: Column(
          children: [
            const WelcomeTitleAndImage(),
            LoginAndSignUpBtn(
              tapOnLoginButton: tapOnLoginButton,
            ),
          ],
        ),
      ),
    );
  }
}
