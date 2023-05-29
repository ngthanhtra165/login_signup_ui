import 'package:flutter/material.dart';
import 'package:signup_login_ui/constants.dart';

class OrAndDivider extends StatelessWidget {
  const OrAndDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: Divider(
            color: Color(0xFFD9D9D9),
            height: 1.5,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8 , vertical: 4),
          child: Text(
            'OR',
            style: TextStyle(
              color: kPrimaryColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Expanded(
          child: Divider(
            color: Color(0xFFD9D9D9),
            height: 1.5,
          ),
        ),
      ],
    );
  }
}
