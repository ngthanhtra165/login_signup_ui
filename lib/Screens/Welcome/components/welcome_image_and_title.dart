
import 'package:flutter/material.dart';
import 'package:signup_login_ui/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomeTitleAndImage extends StatelessWidget {
  const WelcomeTitleAndImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: defaultPadding,
        ),
        const Text(
          'Welcome to Edu',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: defaultPadding * 2,
        ),
        Row(
          children: [
            const Spacer(),
            Expanded(
              flex: 8,
              child: SvgPicture.asset('assets/icons/chat.svg'),
            ),
            const Spacer()
          ],
        ),
        const SizedBox(height : defaultPadding * 2 ,),
      
      ],
    );
  }
}
