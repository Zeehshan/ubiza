import 'package:cached_network_image/cached_network_image.dart';
import 'package:fade_shimmer/fade_shimmer.dart';

import 'package:flutter/material.dart';

class NetworkImageWidget extends StatelessWidget {
  final String? imageUrl;
  final double? width, height, borderRadius;
  final String? localImage;
  final int? userId;
  final bool isUser;
  final double padding;
  const NetworkImageWidget(
      {Key? key,
      required this.imageUrl,
      this.width,
      this.height,
      this.borderRadius = 18,
      this.localImage,
      this.userId,
      this.isUser = false,
      this.padding = 0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius ?? 18),
      child: GestureDetector(
        onTap: () {
          if (userId != null) {
          } else {}
        },
        child: CachedNetworkImage(
          imageUrl: imageUrl ?? '',
          // width: width,
          // height: height,
          // fit: BoxFit.cover,
          imageBuilder: (context, imageProvider) => Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              image: DecorationImage(
                image: imageProvider,
                fit: BoxFit.fill,
              ),
            ),
          ),
          placeholder: (context, url) => FadeShimmer(
            height: height ?? 0,
            width: width ?? 0,
            radius: borderRadius ?? 0,
            highlightColor: const Color(0xffF9F9FB),
            baseColor: const Color(0xffE6E8EB),
          ),
          errorWidget: (context, url, error) => Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
                color: const Color(0xffCDD8E0),
                borderRadius: BorderRadius.circular(borderRadius ?? 12)),
            child: Center(
              child: Icon(isUser ? Icons.person : Icons.image),
            ),
          ),
        ),
      ),
    );
  }
}
