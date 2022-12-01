import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../../../../configs/themes/colors.dart';
import '../../../../controllers/update_profile_controller.dart';
import '../../../widgets/widgtes.dart';

class SelectGendorWidget extends GetView<UpdateProfileController> {
  const SelectGendorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx((() => GradientBorderWidget(
          child: Container(
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.background,
                borderRadius: BorderRadius.circular(15)),
            child: ExpansionTile(
              childrenPadding: EdgeInsets.zero,
              key: Key(controller.gender.value.value),
              backgroundColor: Colors.transparent,
              collapsedBackgroundColor: Colors.transparent,
              // title: Text(
              //   'Select any country',
              //   style: Theme.of(context)
              //       .textTheme
              //       .subtitle2!
              //       .copyWith(fontSize: 14, height: 2),
              // ),
              title: Padding(
                padding: const EdgeInsets.only(bottom: 6, top: 6, left: 18),
                child: controller.gender.value.value.isEmpty
                    ? Text(
                        'app.info.select.genger'.tr,
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(fontSize: 16),
                      )
                    : Text(
                        controller.gender.value.value,
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(fontSize: 16),
                      ),
              ),
              tilePadding: EdgeInsets.zero,

              trailing: const Padding(
                padding: EdgeInsets.only(right: 10),
                child: Icon(
                  Icons.keyboard_arrow_down_outlined,
                ),
              ),

              onExpansionChanged: (bool value) {},
              children: ['Male', 'Female', 'Other']
                  .map((gender) => SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.only(left: 22, right: 22),
                        ),
                        onPressed: () {
                          controller.genderChanged(gender);
                        },
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Row(
                            children: [
                              if (gender == 'Female') const Icon(Icons.woman),
                              if (gender == 'Male') const Icon(Icons.man),
                              if (gender == 'Other')
                                const Icon(Icons.question_mark_sharp),
                              const SizedBox(
                                width: 22,
                              ),
                              Text(
                                gender,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6!
                                    .copyWith(
                                        fontSize: 16,
                                        color: controller.gender.value.value ==
                                                gender
                                            ? kPrimary
                                            : null),
                              ),
                            ],
                          ),
                        ),
                      )))
                  .toList(),
            ),
          ),
        )));
  }
}
