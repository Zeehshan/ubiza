import 'package:flutter/material.dart';
import '../../widgets/widgets.dart';
import 'widgets/widgets.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarWidget(
          backButtonCallback: () => Navigator.pop(context),
        ),
        body: const BodyWidget());
  }
}
