import 'package:flutter/material.dart';
import '../../../configs/routes/assets_routes.dart';
import '../../../utils/utils.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(AssetsRoutes.logo),
      ),
      bottomNavigationBar: Padding(
        padding:
            EdgeInsets.only(bottom: CustomSizeHelper.bottomHeight(context)),
        child: Text(
          '© Three Owls Corp. .',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.subtitle1,
        ),
      ),
    );
  }
}
