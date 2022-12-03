import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../configs/routes/routes.dart';
import '../../utils/utils.dart';

class UploadDocumentWidget extends StatelessWidget {
  final String? path;
  final bool isHttp;
  final Function(DocumentOptionType? type) onChangedOption;
  const UploadDocumentWidget(
      {super.key,
      this.path,
      required this.onChangedOption,
      this.isHttp = false});

  @override
  Widget build(BuildContext context) {
    final Shader linearGradient = const LinearGradient(
      colors: <Color>[Color(0xffAE2EDA), Color(0xff4B57FE)],
    ).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 333,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          image: const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                AssetsRoutes.dottedBorder,
              ))),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: TextButton(
          onPressed: () async {
            final type = await _changeImage(context);
            logger.d(type);
            onChangedOption(type);
          },
          style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30))),
          child: Stack(
            alignment: Alignment.center,
            children: [
              isHttp
                  ? Image.network(path!)
                  : path != ''
                      ? Image.file(
                          File(
                            path!,
                          ),
                        )
                      : Container(
                          width: 104,
                          height: 104,
                          decoration: BoxDecoration(
                              color: const Color(0xff4A4A4A),
                              borderRadius: BorderRadius.circular(100)),
                          child: Center(
                              child: SvgPicture.asset(AssetsRoutes.uploadFile)),
                        ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 60),
                  child: Text(
                      path != ''
                          ? 'Change document'
                          : 'app.button.uploadDocument'.tr,
                      style: TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()..shader = linearGradient)),
                ),
              ),
            ],
          ),
        ),
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
