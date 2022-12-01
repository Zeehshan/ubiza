import 'package:flutter/material.dart';

import '../../configs/themes/colors.dart';

class ExpansionWidget extends StatelessWidget {
  final List<String> list;
  final String selectedItem;
  final String? previous;
  final String title;
  final bool isExpand;
  final Function(String item)? onSelected;
  final Function(bool value)? onExpansionChanged;
  final bool isBorderAll;
  final bool isBorderBottom;
  final bool isBorderTop;
  final bool isBorderNone;
  const ExpansionWidget({
    super.key,
    required this.list,
    required this.selectedItem,
    this.previous,
    required this.title,
    required this.isExpand,
    required this.onSelected,
    required this.onExpansionChanged,
    this.isBorderAll = false,
    this.isBorderTop = false,
    this.isBorderNone = false,
    this.isBorderBottom = false,
  });

  @override
  Widget build(BuildContext context) {
    BorderRadiusGeometry? borderRadius;
    if (isBorderAll) {
      borderRadius = BorderRadius.circular(15);
    }
    if (isBorderBottom) {
      borderRadius = const BorderRadius.only(
          bottomLeft: Radius.circular(15), bottomRight: Radius.circular(15));
    }
    if (isBorderTop) {
      borderRadius = const BorderRadius.only(
          topLeft: Radius.circular(15), topRight: Radius.circular(15));
    }
    if (isBorderNone) {
      borderRadius = null;
    }
    return Container(
      decoration: BoxDecoration(
          color: Theme.of(context).backgroundColor, borderRadius: borderRadius),
      child: Theme(
        data: ThemeData().copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          key: Key(selectedItem),
          backgroundColor: Colors.transparent,
          collapsedBackgroundColor: Colors.transparent,
          title: Text(
            title,
            style: Theme.of(context)
                .textTheme
                .subtitle2!
                .copyWith(fontSize: 14, height: 2),
          ),
          tilePadding: const EdgeInsets.only(bottom: 4, left: 22, right: 22),
          subtitle: Text(
            selectedItem,
            style: Theme.of(context)
                .textTheme
                .headline2!
                .copyWith(fontSize: 16, height: 1.5),
          ),
          trailing: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Icon(
              isExpand ? Icons.arrow_drop_down_circle : Icons.arrow_drop_down,
            ),
          ),
          onExpansionChanged: onExpansionChanged,
          children: list
              .map((e) => SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.only(left: 22, right: 22),
                    ),
                    onPressed: e == selectedItem
                        ? null
                        : () {
                            onSelected!(e);
                          },
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        e,
                        style: Theme.of(context).textTheme.subtitle2!.copyWith(
                            fontSize: 16,
                            color: selectedItem == e ? kPrimary : Colors.black),
                      ),
                    ),
                  )))
              .toList(),
        ),
      ),
    );
  }
}
