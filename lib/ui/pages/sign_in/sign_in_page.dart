import 'package:flutter/material.dart';
import '../../widgets/widgtes.dart';
import 'widgets/widgets.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
