import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../configs/routes/routes.dart';
import '../../../../controllers/controllers.dart';
import '../../../../utils/utils.dart';
import '../../../widgets/widgtes.dart';

class DOBInputWIdget extends GetView<UpdateProfileController> {
  const DOBInputWIdget({super.key});

  _selecDate({required BuildContext context, DateTime? dob}) async {
    DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: dob ?? DateTime.now(),
        firstDate: DateTime(1950),
        //DateTime.now() - not to allow to choose before today.
        lastDate: DateTime.now());

    if (pickedDate != null) {
      logger.d(pickedDate);
      String formattedDate = pickedDate.removeTime().toString();
      controller.dobChanged(formattedDate);
      //formatted date output using intl package =>  2021-03-16
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return Obx((() {
      String dob = controller.dob.value.value;

      return GradientBorderWidget(
        child: Container(
          height: 58,
          padding: const EdgeInsets.symmetric(horizontal: 18),
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.background,
              borderRadius: BorderRadius.circular(15)),
          child: InkWell(
            onTap: () {
              DateTime? selectedDate;
              if (controller.dob.value.value.isNotEmpty) {
                selectedDate = DateTime.parse(controller.dob.value.value);
              }
              _selecDate(context: context, dob: selectedDate);
            },
            child: Row(
              children: [
                Text(
                  controller.dob.value.value.isNotEmpty
                      ? dobFormat(dob)
                      : 'DOB',
                  style: Theme.of(context)
                      .textTheme
                      .headline1!
                      .copyWith(fontSize: 16),
                ),
                const Spacer(),
                SvgPicture.asset(AssetsRoutes.calender)
              ],
            ),
          ),
        ),
      );
    }));
  }
}
