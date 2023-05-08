import 'package:flutter/material.dart';
import 'package:islamly/configs/routes/assets_path.dart';

import 'widgets/widgets.dart';

class WelcomeAuthScreen extends StatelessWidget {
  const WelcomeAuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: const BottomSheetWidget(),
      body: SafeArea(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Positioned(
              top: -150,
              right: -80,
              left: -80,
              child: Image.asset(
                AssetsPath.vector,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
