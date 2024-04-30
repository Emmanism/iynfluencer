import 'package:flutter/material.dart';
import 'package:iynfluencer/core/app_export.dart';

// ignore: must_be_immutable
class AppbarCircleimage extends StatelessWidget {
  AppbarCircleimage({
    Key? key,
    this.imagePath,
    this.svgPath,
    this.margin,
    this.onTap,
    this.url
  }) : super(
          key: key,
        );

  String? imagePath;
  String? url;

  String? svgPath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomImageView(
          svgPath: svgPath,
          imagePath: imagePath,
          url: url,
          height: getSize(
            35,
          ),
          width: getSize(
            35,
          ),
          fit: BoxFit.cover,
          radius: BorderRadius.circular(
            getSize(
              17.5,
            ),
          ),
        ),
      ),
    );
  }
}
