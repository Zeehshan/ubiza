import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:islamly/ui/widgets/widgets.dart';

import '../../../../configs/routes/app_routes.dart';
import '../../../../i18n/i18n.dart';
import '../../../../utils/utils.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .50,
      decoration: BoxDecoration(
          // boxShadow: [
          //   BoxShadow(
          //     color: Colors.black.withOpacity(.1),
          //     blurRadius: 1,
          //     spreadRadius: 0,
          //     offset: const Offset(0, 0),
          //   )
          // ],
          color: Theme.of(context).scaffoldBackgroundColor,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          )),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Column(
        children: [
          ListTile(
            title: Text(
              t.AUTHENTICATION_SCREEN.TITLE,
              style: TextsStyle.titleLarge(context: context),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text(
                t.AUTHENTICATION_SCREEN.SUB_TITLE,
                style: TextsStyle.titleSmall(context: context),
              ),
            ),
          ),
          const Spacer(),
          Hero(
            tag: 'login',
            child: ElevatedButtonWidget(
                margin: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  t.BUTTON.LOG_IN,
                  style: TextsStyle.labelSmall(context: context),
                ),
                onPressed: () => context.push(AppRoutes.logIn)),
          ),
          const SizedBox(
            height: 16,
          ),
          Hero(
            tag: 'signUp',
            child: ElevatedButtonWidget(
                margin: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  t.BUTTON.SIGN_UP,
                  style: TextsStyle.labelSmall(context: context),
                ),
                onPressed: () => context.push(AppRoutes.signUp)),
          ),
          const Spacer(),
          const LegalWidgets(),
        ],
      ),
    );
  }
}
