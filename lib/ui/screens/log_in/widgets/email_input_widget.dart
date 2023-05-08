import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../configs/routes/assets_path.dart';

class EmailInputWidget extends StatefulWidget {
  const EmailInputWidget({super.key});

  @override
  State<EmailInputWidget> createState() => _EmailInputWidgetState();
}

class _EmailInputWidgetState extends State<EmailInputWidget> {
  late TextEditingController textEditingController;
  @override
  void initState() {
    super.initState();
    textEditingController = TextEditingController();
    textEditingController.addListener(_emailChanged);
  }

  _emailChanged() {}

  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: textEditingController,
        style: Theme.of(context)
            .textTheme
            .titleLarge!
            .copyWith(fontSize: 16, fontWeight: FontWeight.w400),
        decoration: InputDecoration(
            prefixIcon: Padding(
              padding: const EdgeInsets.only(left: 14.5, right: 10.5),
              child: SvgPicture.asset(AssetsPath.mail),
            ),
            prefixIconConstraints:
                const BoxConstraints(maxHeight: 40, maxWidth: 50)));
  }
}
