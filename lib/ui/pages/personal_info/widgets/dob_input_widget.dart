import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../../configs/routes/routes.dart';
import '../../../../controllers/controllers.dart';
import '../../../widgets/widgtes.dart';

class DOBInputWIdget extends GetView<UpdateProfileController> {
  const DOBInputWIdget({super.key});

  _selecDate({required BuildContext context}) async {
    DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1950),
        //DateTime.now() - not to allow to choose before today.
        lastDate: DateTime(2100));

    if (pickedDate != null) {
      String formattedDate = DateFormat('yyyy/MM/dd').format(pickedDate);
      controller.dobChanged(formattedDate);
      //formatted date output using intl package =>  2021-03-16
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return Obx((() => GradientBorderWidget(
          child: Container(
            height: 58,
            padding: const EdgeInsets.symmetric(horizontal: 18),
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.background,
                borderRadius: BorderRadius.circular(15)),
            child: Row(
              children: [
                Text(
                  controller.dob.value.value.isNotEmpty
                      ? controller.dob.value.value
                      : 'DOB',
                  style: Theme.of(context)
                      .textTheme
                      .headline1!
                      .copyWith(fontSize: 16),
                ),
                const Spacer(),
                InkWell(
                  onTap: () => _selecDate(context: context),
                  child: SvgPicture.asset(AssetsRoutes.calender),
                )
              ],
            ),
          ),
        )));
  }
}
