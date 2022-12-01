import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../configs/routes/routes.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final Widget title;
  final List<Widget> actions;
  final double toolbarHeight;
  final Color? backgroundColor, leadingIconColor;
  final VoidCallback? backButtonCallback;
  final bool? centerTitle;

  const AppBarWidget(
      {Key? key,
      required this.title,
      this.actions = const [],
      this.toolbarHeight = kToolbarHeight,
      this.backgroundColor,
      this.backButtonCallback,
      this.leadingIconColor,
      this.centerTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      primary: true,
      elevation: 0,
      leadingWidth: 100,
      automaticallyImplyLeading: false,
      centerTitle: centerTitle,
      toolbarHeight: toolbarHeight,
      backgroundColor: backgroundColor ?? Colors.transparent,
      titleSpacing: 0,
      leading: (backButtonCallback != null)
          ? Center(
              child: Container(
                width: 52,
                height: 52,
                decoration: BoxDecoration(
                    color: Theme.of(context).backgroundColor,
                    borderRadius: BorderRadius.circular(100)),
                child: IconButton(
                    padding: EdgeInsets.zero,
                    splashRadius: 10,
                    onPressed: backButtonCallback,
                    icon: SvgPicture.asset(AssetsRoutes.backArrow)),
              ),
            )
          : null,
      title: title,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(toolbarHeight);
}
