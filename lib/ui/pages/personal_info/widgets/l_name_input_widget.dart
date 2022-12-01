import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controllers/controllers.dart';
import '../../../widgets/widgtes.dart';

class LNameInputWIdget extends StatefulWidget {
  const LNameInputWIdget({super.key});

  @override
  State<LNameInputWIdget> createState() => _LNameInputWIdgetState();
}

class _LNameInputWIdgetState extends State<LNameInputWIdget> {
  late TextEditingController controller;
  final UpdateProfileController updateProfileController = Get.find();
  final AuthenticationController authenticationController = Get.find();
  @override
  void initState() {
    super.initState();
    controller =
        TextEditingController(text: authenticationController.user.value.lName);

    controller.addListener(lNameChanged);
  }

  lNameChanged() {
    updateProfileController.lNameChanged(controller.text);
  }

  @override
  Widget build(BuildContext context) {
    return GradientBorderWidget(
      child: TextField(
        textInputAction: TextInputAction.next,
        style: Theme.of(context).textTheme.headline5!.copyWith(fontSize: 16),
        controller: controller,
        decoration: InputDecoration(
            hintText: 'app.info.lastName'.tr,
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
