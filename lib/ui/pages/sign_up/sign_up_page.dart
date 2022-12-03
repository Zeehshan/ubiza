import 'package:flutter/material.dart';

import '../../widgets/widgtes.dart';
import 'widgets/widgets.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: Container(),
        // backButtonCallback: () => Navigator.pop(context),
      ),
      body: const BodyWidget(),
    );
  }
}
