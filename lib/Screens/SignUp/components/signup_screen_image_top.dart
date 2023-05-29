import 'package:flutter/material.dart';
import 'package:signup_login_ui/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignupScreenTopImage extends StatelessWidget {
  const SignupScreenTopImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: defaultPadding,
        ),
        Text(
          'Sign Up',
          style: const TextStyle(fontWeight: FontWeight.bold , fontSize: 20),
        ),
        const SizedBox(
          height: defaultPadding * 2,
        ),
        Row(
          children: [
            const Spacer(),
            Expanded(
              flex: 8,
              child: SvgPicture.asset('assets/icons/signup.svg'),
            ),
            const Spacer(),
          ],
        ),
      ],
    );
  }
}
