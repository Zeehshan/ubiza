import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islamly/configs/routes/assets_path.dart';
import 'package:islamly/configs/themes/themes.dart';

import '../../i18n/i18n.dart';
import '../../utils/utils.dart';

class SocialsLoginWidget extends StatefulWidget {
  final AuthScreenType authScreenTypel;
  const SocialsLoginWidget({super.key, required this.authScreenTypel});

  @override
  State<SocialsLoginWidget> createState() => _SocialsLoginWidgetState();
}

class _SocialsLoginWidgetState extends State<SocialsLoginWidget> {
  final socials = [
    SocialModel(SocialLoginType.gmail, AssetsPath.gmail),
    SocialModel(SocialLoginType.apple, AssetsPath.apple),
    SocialModel(SocialLoginType.facbook, AssetsPath.fb),
    SocialModel(SocialLoginType.google, AssetsPath.google),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                height: 2,
                decoration: BoxDecoration(
                    color: ThemeConfig.lightColor,
                    borderRadius: BorderRadius.circular(100)),
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            Text(
              widget.authScreenTypel == AuthScreenType.login
                  ? t.LABEL.OR_LOGIN_WITH
                  : t.LABEL.OR_SIGN_UP_WITH,
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: ThemeConfig.primaryColor, fontSize: 16),
            ),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Container(
                height: 2,
                decoration: BoxDecoration(
                    color: ThemeConfig.lightColor,
                    borderRadius: BorderRadius.circular(100)),
              ),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: socials
              .map((social) => Container(
                    width: 58,
                    height: 58,
                    margin: const EdgeInsets.only(left: 8, top: 16, right: 8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: ThemeConfig.borderLight)),
                    child: InkWell(
                      onTap: () => _socialLogin(social.type),
                      child: Center(child: SvgPicture.asset(social.icon)),
                    ),
                  ))
              .toList(),
        ),
      ],
    );
  }

  _socialLogin(SocialLoginType type) {
    switch (type) {
      case SocialLoginType.gmail:
        break;
      case SocialLoginType.apple:
        break;
      case SocialLoginType.facbook:
        break;
      case SocialLoginType.google:
        break;
    }
  }
}

class SocialModel {
  final SocialLoginType type;
  final String icon;

  SocialModel(this.type, this.icon);
}
