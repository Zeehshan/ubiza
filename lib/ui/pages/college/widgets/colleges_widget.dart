import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../configs/themes/colors.dart';
import '../../../../controllers/controllers.dart';
import '../../../widgets/widgtes.dart';
import 'widgets.dart';

class CollegesWidget extends StatefulWidget {
  const CollegesWidget({super.key});

  @override
  State<CollegesWidget> createState() => _CollegesWidgetState();
}

class _CollegesWidgetState extends State<CollegesWidget> {
  bool isExpand = false;
  @override
  Widget build(BuildContext context) {
    final UpdateProfileController controller = Get.find();
    return Expanded(
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: ElevatedButtonWidget(
                showGradient: true,
                onPressed: () {},
                child: Container(
                  margin: const EdgeInsets.all(1.3),
                  decoration: BoxDecoration(
                      color: Theme.of(context).scaffoldBackgroundColor,
                      borderRadius: BorderRadius.circular(15)),
                  child: ExpansionTile(
                    childrenPadding: EdgeInsets.zero,
                    key: Key(controller.selectyedCollege?.code ?? ''),
                    backgroundColor: Colors.transparent,
                    collapsedBackgroundColor: Colors.transparent,

                    title: Padding(
                      padding: const EdgeInsets.only(
                          bottom: 6, top: 6, left: 10, right: 10),
                      child: controller.selectyedCollege == null
                          ? Text(
                              'Choose you college',
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.headline6,
                            )
                          : Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                NetworkImageWidget(
                                    isUser: false,
                                    borderRadius: 100,
                                    width: 55,
                                    height: 55,
                                    padding: 10,
                                    imageUrl:
                                        controller.selectyedCollege?.logo),
                                const SizedBox(
                                  width: 22,
                                ),
                                Expanded(
                                  child: Text.rich(TextSpan(
                                      text: controller.selectyedCollege?.name ??
                                          '',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline1!
                                          .copyWith(fontSize: 12),
                                      children: [
                                        const TextSpan(text: ' '),
                                        TextSpan(
                                          text:
                                              '(${controller.selectyedCollege!.code})',
                                        )
                                      ])),
                                ),
                              ],
                            ),
                    ),
                    tilePadding: EdgeInsets.zero,

                    // trailing: Padding(
                    //   padding: const EdgeInsets.only(top: 20),
                    //   child: Icon(
                    //     isExpand ? Icons.arrow_drop_down_circle : Icons.arrow_drop_down,
                    //   ),
                    // ),
                    trailing: Container(
                      width: 0,
                    ),
                    onExpansionChanged: (bool value) {
                      setState(() {
                        isExpand = !isExpand;
                      });
                    },
                    expandedAlignment: Alignment.center,
                    children: controller.colleges
                        .map((college) => SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: TextButton(
                              style: TextButton.styleFrom(
                                padding: const EdgeInsets.only(
                                    left: 10, right: 10, bottom: 6),
                              ),
                              onPressed: college == controller.selectyedCollege
                                  ? null
                                  : () {
                                      setState(() {
                                        isExpand = false;
                                      });
                                      controller.collegeChanged(college);
                                    },
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Row(
                                  children: [
                                    NetworkImageWidget(
                                        isUser: false,
                                        borderRadius: 100,
                                        width: 55,
                                        height: 55,
                                        padding: 10,
                                        imageUrl: college.logo),
                                    const SizedBox(
                                      width: 22,
                                    ),
                                    Expanded(
                                      child: Text.rich(TextSpan(
                                          text: college.name,
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline2!
                                              .copyWith(
                                                  fontSize: 14,
                                                  color: controller
                                                              .selectyedCollege
                                                              ?.code ==
                                                          college.code
                                                      ? kPrimary
                                                      : null),
                                          children: [
                                            const TextSpan(text: ' '),
                                            TextSpan(
                                                text:
                                                    '(${college.code.toUpperCase()})')
                                          ])),
                                    ),
                                  ],
                                ),
                              ),
                            )))
                        .toList(),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          if (controller.selectyedCollege != null)
            const ConfirmedButtonWidget(),
        ],
      ),
    );
  }
}