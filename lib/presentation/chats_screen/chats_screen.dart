import 'controller/chats_controller.dart';
import 'package:flutter/material.dart';
import 'package:iynfluencer/core/app_export.dart';
import 'package:iynfluencer/widgets/app_bar/appbar_circleimage.dart';
import 'package:iynfluencer/widgets/app_bar/appbar_image.dart';
import 'package:iynfluencer/widgets/app_bar/appbar_subtitle.dart';
import 'package:iynfluencer/widgets/app_bar/custom_app_bar.dart';
import 'package:iynfluencer/widgets/custom_text_form_field.dart';

class ChatsScreen extends GetWidget<ChatsController> {
  const ChatsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.gray5001,
            appBar: CustomAppBar(
                height: getVerticalSize(64),
                leadingWidth: 52,
                leading: AppbarImage(
                    height: getSize(30),
                    width: getSize(30),
                    svgPath: ImageConstant.imgArrowleftGray600,
                    margin: getMargin(left: 22, top: 17, bottom: 17),
                    onTap: () {
                      onTapArrowleft29();
                    }),
                title: Padding(
                    padding: getPadding(left: 12),
                    child: Row(children: [
                      AppbarCircleimage(imagePath: ImageConstant.imgEllipse208),
                      AppbarSubtitle(
                          text: "lbl_mark_adebayo".tr,
                          margin: getMargin(left: 14, top: 9, bottom: 5))
                    ])),
                actions: [
                  AppbarImage(
                      height: getSize(18),
                      width: getSize(18),
                      svgPath: ImageConstant.imgFrame18x18,
                      margin:
                          getMargin(left: 23, top: 23, right: 22, bottom: 1)),
                  AppbarImage(
                      height: getSize(20),
                      width: getSize(20),
                      svgPath: ImageConstant.imgFrame20x20,
                      margin: getMargin(left: 23, top: 22, right: 45))
                ],
                styleType: Style.bgOutlineIndigo50_1),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 19, top: 25, right: 19, bottom: 25),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding: getPadding(left: 43),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgTrashCyan300,
                                        height: getVerticalSize(61),
                                        width: getHorizontalSize(16)),
                                    Expanded(
                                        child: Container(
                                            padding:
                                                getPadding(top: 9, bottom: 9),
                                            decoration:
                                                AppDecoration.outlineCyan300,
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Container(
                                                      width: getHorizontalSize(
                                                          218),
                                                      margin: getMargin(
                                                          top: 2, right: 32),
                                                      child: Text(
                                                          "msg_hey_favour_how"
                                                              .tr,
                                                          maxLines: null,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtSatoshiLight14WhiteA70001))
                                                ]))),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgFile,
                                        height: getVerticalSize(61),
                                        width: getHorizontalSize(24))
                                  ]))),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding: getPadding(top: 10, right: 16),
                              child: Text("lbl_7_13_pm".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtSatoshiLight12))),
                      Padding(
                          padding: getPadding(left: 11, top: 33, right: 42),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgTrashGray20003,
                                height: getVerticalSize(79),
                                width: getHorizontalSize(16)),
                            Expanded(
                                child: Container(
                                    padding: getPadding(top: 9, bottom: 9),
                                    decoration: AppDecoration.outlineGray20003,
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                              width: getHorizontalSize(245),
                                              margin:
                                                  getMargin(top: 2, right: 2),
                                              child: Text(
                                                  "msg_just_rounded_up".tr,
                                                  maxLines: null,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtSatoshiLight14Gray900))
                                        ]))),
                            CustomImageView(
                                svgPath: ImageConstant.imgFrame2,
                                height: getVerticalSize(79),
                                width: getHorizontalSize(16))
                          ])),
                      Padding(
                          padding: getPadding(left: 1, top: 9, right: 42),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgBookmarkGray20003,
                                height: getVerticalSize(61),
                                width: getHorizontalSize(24)),
                            Expanded(
                                child: Container(
                                    padding: getPadding(top: 9, bottom: 9),
                                    decoration: AppDecoration.outlineGray20003,
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                              width: getHorizontalSize(227),
                                              margin:
                                                  getMargin(top: 2, right: 23),
                                              child: Text(
                                                  "msg_i_will_most_certainly"
                                                      .tr,
                                                  maxLines: null,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtSatoshiLight14Gray900))
                                        ]))),
                            CustomImageView(
                                svgPath: ImageConstant.imgFrame2,
                                height: getVerticalSize(61),
                                width: getHorizontalSize(16))
                          ])),
                      Padding(
                          padding: getPadding(left: 15, top: 13, bottom: 5),
                          child: Text("lbl_8_12_pm".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtSatoshiLight12))
                    ])),
            bottomNavigationBar: Container(
                height: getVerticalSize(42),
                width: getHorizontalSize(334),
                margin: getMargin(left: 21, right: 20, bottom: 45),
                decoration: AppDecoration.outlineIndigo505,
                child: Stack(alignment: Alignment.center, children: [
                  CustomImageView(
                      svgPath: ImageConstant.imgFrame6,
                      height: getSize(20),
                      width: getSize(20),
                      alignment: Alignment.topRight,
                      margin: getMargin(top: 3, right: 5)),
                  CustomTextFormField(
                      width: getHorizontalSize(334),
                      focusNode: FocusNode(),
                      autofocus: true,
                      controller: controller.messageController,
                      hintText: "lbl_write_a_message".tr,
                      variant: TextFormFieldVariant.Neutral,
                      padding: TextFormFieldPadding.PaddingT11,
                      fontStyle: TextFormFieldFontStyle.SatoshiLight14,
                      textInputAction: TextInputAction.done,
                      alignment: Alignment.center,
                      suffix: Container(
                          margin: getMargin(
                              left: 30, top: 10, right: 16, bottom: 10),
                          child: CustomImageView(
                              svgPath: ImageConstant.imgCamera)),
                      suffixConstraints:
                          BoxConstraints(maxHeight: getVerticalSize(42)))
                ]))));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] library to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleft29() {
    Get.back();
  }
}
