import 'package:flutter/material.dart';
import 'package:iynfluencer/core/app_export.dart';
import 'package:iynfluencer/widgets/custom_search_view.dart';

import '../../presentation/search_filter_bottomsheet/controller/search_filter_controller.dart';
import '../../presentation/search_filter_bottomsheet/search_filter_bottomsheet.dart';

// ignore: must_be_immutable
class AppbarSearchview extends StatelessWidget {
  AppbarSearchview({
    Key? key,
    this.hintText,
    this.controller,
    this.margin,
    this.onSubmitted,

  }) : super(
          key: key,
        );

  String? hintText;

  TextEditingController? controller;

  EdgeInsetsGeometry? margin;

  Function(String)? onSubmitted;

  @override
  Widget build(BuildContext context) {
    SearchFilterController searchFilterController =
        Get.put(SearchFilterController());

    return Center(
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomSearchView(
          width: getHorizontalSize(
            340,
          ),
          height: getVerticalSize(300),
          focusNode: FocusNode(),
          autofocus: true,
          controller: controller,
          hintText: hintText,
          prefix: Container(
            margin: getMargin(
              left: 19,
              top: 9,
              right: 10,
              bottom: 9,
            ),
            child: CustomImageView(
              svgPath: ImageConstant.imgSearch,
            ),
          ),
          prefixConstraints: BoxConstraints(
            maxHeight: getVerticalSize(
              33,
            ),
          ),
          suffix: GestureDetector(
            onTap: () {
              Get.bottomSheet(SearchFilterBottomsheet(searchFilterController));
            },
            child: Container(
              margin: getMargin(
                left: 30,
                top: 6,
                right: 12,
                bottom: 6,
              ),
              child: CustomImageView(
                svgPath: ImageConstant.imgSignal,
              ),
            ),
          ),
          suffixConstraints: BoxConstraints(
            maxHeight: getVerticalSize(
              37,
            ),
          ),
        ),
      ),
    );
  }
}
