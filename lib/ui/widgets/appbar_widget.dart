import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'widgets.dart';

// TODO not yet finished
class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final Widget? title;
  final List<Widget> actions;
  final double toolbarHeight;
  final Color? backgroundColor, leadingIconColor;
  final VoidCallback? backButtonCallback;
  final bool? centerTitle;

  const AppBarWidget(
      {Key? key,
      this.title,
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
      leadingWidth: 60,
      automaticallyImplyLeading: false,
      centerTitle: centerTitle,
      toolbarHeight: toolbarHeight,
      backgroundColor: backgroundColor ?? Colors.transparent,
      titleSpacing: 0,
      leading: (backButtonCallback != null)
          ? InkWell(onTap: backButtonCallback, child: const BackIconWidget())
          : null,
      title: title,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(toolbarHeight);
}
