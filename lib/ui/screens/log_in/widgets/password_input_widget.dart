import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../configs/routes/assets_path.dart';

class PasswordInputWidget extends StatefulWidget {
  const PasswordInputWidget({super.key});

  @override
  State<PasswordInputWidget> createState() => _PasswordInputWidgetState();
}

class _PasswordInputWidgetState extends State<PasswordInputWidget> {
  late TextEditingController textEditingController;
  bool showPassword = false;
  @override
  void initState() {
    super.initState();
    textEditingController = TextEditingController();
    textEditingController.addListener(_passwordChanged);
  }

  _passwordChanged() {}

  _hideShowPasswordInput() {
    setState(() {
      showPassword = !showPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: textEditingController,
        obscureText: !showPassword,
        style: Theme.of(context)
            .textTheme
            .titleLarge!
            .copyWith(fontSize: 16, fontWeight: FontWeight.w400),
        decoration: InputDecoration(
            suffixIcon: InkWell(
              splashColor: Colors.transparent,
              onTap: _hideShowPasswordInput,
              child: Padding(
                padding: const EdgeInsets.only(right: 14.5, left: 10.5),
                child: SvgPicture.asset(
                    showPassword ? AssetsPath.eyeOn : AssetsPath.eyeOff),
              ),
            ),
            suffixIconConstraints:
                const BoxConstraints(maxHeight: 40, maxWidth: 50),
            prefixIcon: Padding(
              padding: const EdgeInsets.only(left: 14.5, right: 10.5),
              child: SvgPicture.asset(AssetsPath.lock),
            ),
            prefixIconConstraints:
                const BoxConstraints(maxHeight: 40, maxWidth: 50)));
  }
}
