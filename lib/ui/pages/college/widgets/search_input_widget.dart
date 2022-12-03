import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controllers/update_profile_controller.dart';
import '../../../widgets/gradient_border_widget.dart';

class SearchInputWidget extends StatefulWidget {
  const SearchInputWidget({super.key});

  @override
  State<SearchInputWidget> createState() => _SearchInputWidgetState();
}

class _SearchInputWidgetState extends State<SearchInputWidget> {
  late TextEditingController controller;
  final UpdateProfileController updateProfileController = Get.find();
  String query = '';
  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
    controller.addListener(_searchChanged);
  }

  _searchChanged() {
    updateProfileController.collegesFilterd(controller.text);
  }

  @override
  Widget build(BuildContext context) {
    return GradientBorderWidget(
      child: Container(
        height: 62,
        padding: const EdgeInsets.symmetric(horizontal: 18),
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            borderRadius: BorderRadius.circular(15)),
        child: TextField(
          controller: controller,
          decoration: InputDecoration.collapsed(
            hintText: 'Choose your college',
            hintStyle: Theme.of(context).textTheme.headline6,
          ),
        ),
      ),
    );
  }
}
