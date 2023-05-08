import 'package:flutter/material.dart';
import 'package:islamly/utils/custom_size_helper.dart';

import '../../widgets/widgets.dart';
import 'widgets/widgets.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        backButtonCallback: () => Navigator.pop(context),
      ),
      body: const BodyWidget(),
      bottomNavigationBar: IntrinsicHeight(
          child: Padding(
        padding:
            EdgeInsets.only(bottom: CustomSizeHelper.bottomHeight(context)),
        child: const LegalWidgets(),
      )),
    );
  }
}
