import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:islamly/configs/routes/app_routes.dart';
import 'package:islamly/configs/routes/assets_path.dart';

import '../../../../i18n/i18n.dart';
import '../../../../utils/utils.dart';

class BottomToolBarWidget extends StatelessWidget {
  const BottomToolBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          TextButton(
            onPressed: () {
              SecureStorage().onBoardingSeen();
              context.go(AppRoutes.welcomeAuths);
            },
            child: Text(
              t.BUTTON.SKIP,
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontSize: 18),
            ),
          ),
          const Spacer(),
          InkWell(
              onTap: () {
                SecureStorage().onBoardingSeen();
                context.go(AppRoutes.welcomeAuths);
              },
              child: SvgPicture.asset(AssetsPath.go))
        ],
      ),
    );
  }
}
