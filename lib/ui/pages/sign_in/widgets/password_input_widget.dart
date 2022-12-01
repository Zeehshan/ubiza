import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:ubiza/configs/routes/assets_routes.dart';

import '../../../../controllers/controllers.dart';
import '../../../widgets/widgtes.dart';

class PasswordInputWidget extends StatefulWidget {
  const PasswordInputWidget({super.key});

  @override
  State<PasswordInputWidget> createState() => _PasswordInputWidgetState();
}

class _PasswordInputWidgetState extends State<PasswordInputWidget> {
  late TextEditingController controller;
  late LoginController loginController;
  bool obscureText = true;
  @override
  void initState() {
    super.initState();
    loginController = Get.find<LoginController>();
    controller = TextEditingController();
    controller.addListener(_passwordChanged);
  }

  _passwordChanged() {
    loginController.passwordChanged(controller.text);
  }

  _obscureTextChanged() {
    setState(() {
      obscureText = !obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GradientBorderWidget(
      child: TextField(
        textInputAction: TextInputAction.done,
        style: Theme.of(context).textTheme.headline5!.copyWith(fontSize: 16),
        obscureText: obscureText,
        controller: controller,
        decoration: InputDecoration(
            hintText: 'password'.tr,
            hintStyle:
                Theme.of(context).textTheme.headline5!.copyWith(fontSize: 16),
            border: InputBorder.none,
            fillColor: Theme.of(context).colorScheme.background,
            filled: true,
            isDense: true,
            contentPadding:
                const EdgeInsets.only(top: 12, bottom: 12, left: 10),
            suffixIconConstraints: const BoxConstraints(
                maxWidth: 44, maxHeight: 22, minHeight: 22, minWidth: 44),
            suffixIcon: InkWell(
              onTap: _obscureTextChanged,
              child: SvgPicture.asset(AssetsRoutes.eyeLocl),
            )),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }
}
