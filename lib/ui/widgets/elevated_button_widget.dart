import 'package:flutter/material.dart';

import 'widgtes.dart';

class ElevatedButtonWidget extends StatelessWidget {
  final Widget child;
  final bool showProgressIndicator, showGradient;
  final double? hight, width;
  final double? borderRadius;
  final Function()? onPressed;
  const ElevatedButtonWidget(
      {super.key,
      required this.child,
      this.width,
      this.hight,
      this.borderRadius,
      this.showProgressIndicator = false,
      this.showGradient = false,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: hight,
      decoration: BoxDecoration(
          color: !showGradient ? Theme.of(context).backgroundColor : null,
          gradient: onPressed == null
              ? null
              : !showGradient
                  ? null
                  : const LinearGradient(
                      colors: [Color(0xff4B57FE), Color(0xffAE2EDA)]),
          borderRadius: BorderRadius.circular(borderRadius ?? 15)),
      child: AbsorbPointer(
        absorbing: showProgressIndicator,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              elevation: 0,
              shadowColor: Colors.transparent,
              primary: Colors.transparent,
              padding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(borderRadius ?? 15))),
          child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 400),
              transitionBuilder: (Widget child, Animation<double> animation) =>
                  ScaleTransition(scale: animation, child: child),
              child: showProgressIndicator ? const LoadingWidget() : child),
        ),
      ),
    );
  }
}
