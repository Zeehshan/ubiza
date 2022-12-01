import 'package:flutter/material.dart';

import 'widgtes.dart';

class AuthAppleButtonWidget extends StatelessWidget {
  final String text;
  const AuthAppleButtonWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButtonWidget(
      hight: 56,
      child: Row(
        children: [
          const Spacer(),
          const Icon(
            Icons.apple,
            size: 36,
          ),
          const SizedBox(
            width: 24,
          ),
          Text(
            text,
            style:
                Theme.of(context).textTheme.headline4!.copyWith(fontSize: 16),
          ),
          const Spacer(),
        ],
      ),
      onPressed: () {},
    );
  }
}
