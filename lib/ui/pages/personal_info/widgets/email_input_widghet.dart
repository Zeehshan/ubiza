import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controllers/controllers.dart';
import '../../../widgets/widgtes.dart';

class EmailInputWidget extends StatefulWidget {
  const EmailInputWidget({super.key});

  @override
  State<EmailInputWidget> createState() => _EmailInputWidgetState();
}

class _EmailInputWidgetState extends State<EmailInputWidget> {
  late TextEditingController controller;
  final UpdateProfileController updateProfileController = Get.find();
  final AuthenticationController authenticationController = Get.find();
  @override
  void initState() {
    super.initState();
    controller =
        TextEditingController(text: authenticationController.user.value.email);
  }

  @override
  Widget build(BuildContext context) {
    return GradientBorderWidget(
      child: TextField(
        enabled: false,
        textInputAction: TextInputAction.next,
        style: Theme.of(context).textTheme.headline5!.copyWith(fontSize: 16),
        controller: controller,
        decoration: InputDecoration(
            hintStyle:
                Theme.of(context).textTheme.headline5!.copyWith(fontSize: 16),
            border: InputBorder.none,
            isDense: true,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
            fillColor: Theme.of(context).colorScheme.background,
            filled: true),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }
}
