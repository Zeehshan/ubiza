import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../configs/routes/routes.dart';
import '../../utils/utils.dart';

class UploadDocumentWidget extends StatelessWidget {
  final String? path;
  final Function(DocumentOptionType? type) onChangedOption;
  const UploadDocumentWidget(
      {super.key, this.path, required this.onChangedOption});

  @override
  Widget build(BuildContext context) {
    final Shader linearGradient = const LinearGradient(
      colors: <Color>[Color(0xffAE2EDA), Color(0xff4B57FE)],
    ).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 333,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
        AssetsRoutes.dottedBorder,
      ))),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 104,
            height: 104,
            decoration: BoxDecoration(
                color: const Color(0xff4A4A4A),
                borderRadius: BorderRadius.circular(100)),
            child: IconButton(
                splashColor: Colors.white.withOpacity(.5),
                highlightColor: Colors.white.withOpacity(.5),
                color: Colors.white.withOpacity(.5),
                focusColor: Colors.white.withOpacity(.5),
                hoverColor: Colors.white.withOpacity(.5),
                disabledColor: Colors.white.withOpacity(.5),
                onPressed: () async {
                  final type = await _changeImage(context);
                  logger.d(type);
                  onChangedOption(type);
                },
                icon: path != ''
                    ? ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.file(File(path!)))
                    : SvgPicture.asset(AssetsRoutes.uploadFile)),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 60),
              child: Text('app.button.uploadDocument'.tr,
                  style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      foreground: Paint()..shader = linearGradient)),
            ),
          ),
        ],
      ),
    );
  }

  /// Pop up with camera options
  Future<DocumentOptionType?> _changeImage(context) async {
    return await showCupertinoModalPopup<DocumentOptionType?>(
      context: context,
      builder: (_) {
        return CupertinoActionSheet(
          title: Text('Choose option'),
          cancelButton: CupertinoActionSheetAction(
            child: Text('Canncel'),
            onPressed: () => Navigator.of(context).pop(),
          ),
          actions: <Widget>[
            CupertinoActionSheetAction(
              child: Text('Camera'),
              onPressed: () {
                Navigator.pop(context, DocumentOptionType.camera);
              },
            ),
            CupertinoActionSheetAction(
                child: Text('Gallery'),
                onPressed: () {
                  Navigator.pop(context, DocumentOptionType.gallery);
                }),
          ],
        );
      },
    );
  }
}
