import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controllers/controllers.dart';
import '../../../widgets/widgtes.dart';

class FNameInputWIdget extends StatefulWidget {
  const FNameInputWIdget({super.key});

  @override
  State<FNameInputWIdget> createState() => _FNameInputWIdgetState();
}

class _FNameInputWIdgetState extends State<FNameInputWIdget> {
  late TextEditingController controller;
  final UpdateProfileController updateProfileController = Get.find();
  final AuthenticationController authenticationController = Get.find();
  @override
  void initState() {
    super.initState();
    controller =
        TextEditingController(text: authenticationController.user.value.fName);

    controller.addListener(firstNameChanged);
  }

  firstNameChanged() {
    updateProfileController.fNameChanged(controller.text);
  }

  @override
  Widget build(BuildContext context) {
    return GradientBorderWidget(
      child: TextField(
        textInputAction: TextInputAction.next,
        style: Theme.of(context).textTheme.headline5!.copyWith(fontSize: 16),
        controller: controller,
        decoration: InputDecoration(
            hintText: 'app.info.name'.tr,
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
