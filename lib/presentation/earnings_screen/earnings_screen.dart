import '../earnings_screen/widgets/earnings_item_widget.dart';
import 'controller/earnings_controller.dart';
import 'models/earnings_item_model.dart';
import 'package:flutter/material.dart';
import 'package:iynfluencer/core/app_export.dart';
import 'package:iynfluencer/widgets/app_bar/appbar_image.dart';
import 'package:iynfluencer/widgets/app_bar/appbar_title.dart';
import 'package:iynfluencer/widgets/app_bar/custom_app_bar.dart';
import 'package:iynfluencer/widgets/custom_button.dart';

class EarningsScreen extends GetWidget<EarningsController> {
  const EarningsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(48),
                leadingWidth: 50,
                leading: AppbarImage(
                    height: getSize(30),
                    width: getSize(30),
                    svgPath: ImageConstant.imgArrowleftGray600,
                    margin: getMargin(left: 20, top: 9, bottom: 9),
                    onTap: () {
                      onTapArrowleft25();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_earnings".tr),
                styleType: Style.bgOutlineIndigo50),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    padding: getPadding(top: 40),
                    child: Padding(
                        padding: getPadding(left: 20, right: 20, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Align(
                                  alignment: Alignment.center,
                                  child: Text("lbl_16_500".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtSatoshiBlack24)),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(top: 4),
                                      child: Text("lbl_total_earnings".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtSatoshiLight12))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 10, top: 26, right: 9),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Expanded(
                                                child: CustomButton(
                                                    height: getVerticalSize(42),
                                                    text: "lbl_transactions".tr,
                                                    margin: getMargin(right: 8),
                                                    variant: ButtonVariant
                                                        .FillGray200ab,
                                                    padding: ButtonPadding
                                                        .PaddingAll12,
                                                    fontStyle: ButtonFontStyle
                                                        .SatoshiBold14Gray900)),
                                            Expanded(
                                                child: CustomButton(
                                                    height: getVerticalSize(42),
                                                    text: "lbl_withdraw".tr,
                                                    margin: getMargin(left: 8),
                                                    padding: ButtonPadding
                                                        .PaddingAll12,
                                                    fontStyle: ButtonFontStyle
                                                        .SatoshiBold14Gray100))
                                          ]))),
                              Padding(
                                  padding: getPadding(top: 34),
                                  child: Text("lbl_total_jobs".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtSatoshiLight10)),
                              Padding(
                                  padding: getPadding(top: 1),
                                  child: Text("lbl_34".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style:
                                          AppStyle.txtSatoshiBold18Gray900a7)),
                              SizedBox(
                                  width: double.maxFinite,
                                  child: Container(
                                      margin: getMargin(left: 2, top: 15),
                                      decoration:
                                          AppDecoration.outlineIndigo501,
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  SizedBox(
                                                      height:
                                                          getVerticalSize(201),
                                                      width: getHorizontalSize(
                                                          312),
                                                      child: Stack(
                                                          alignment:
                                                              Alignment.center,
                                                          children: [
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgChartflow,
                                                                height:
                                                                    getVerticalSize(
                                                                        165),
                                                                width:
                                                                    getHorizontalSize(
                                                                        312),
                                                                alignment: Alignment
                                                                    .bottomCenter),
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgChartlines,
                                                                height:
                                                                    getVerticalSize(
                                                                        201),
                                                                width:
                                                                    getHorizontalSize(
                                                                        311),
                                                                alignment:
                                                                    Alignment
                                                                        .center)
                                                          ])),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 1),
                                                      child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child: Text(
                                                                    "lbl_4k".tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtSatoshiLight12Bluegray600)),
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child: Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            top:
                                                                                29),
                                                                    child: Text(
                                                                        "lbl_3k"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtSatoshiLight12Bluegray600))),
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child: Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            top:
                                                                                28),
                                                                    child: Text(
                                                                        "lbl_2k"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtSatoshiLight12Bluegray600))),
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child: Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            top:
                                                                                29),
                                                                    child: Text(
                                                                        "lbl_1k"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtSatoshiLight12Bluegray600))),
                                                            Align(
                                                                alignment: Alignment
                                                                    .centerRight,
                                                                child: Padding(
                                                                    padding: getPadding(
                                                                        top: 29,
                                                                        right:
                                                                            2),
                                                                    child: Text(
                                                                        "lbl_02"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtSatoshiLight12Bluegray600)))
                                                          ]))
                                                ]),
                                            Padding(
                                                padding: getPadding(
                                                    left: 1,
                                                    top: 5,
                                                    right: 42,
                                                    bottom: 20),
                                                child: Row(children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(bottom: 1),
                                                      child: Text("lbl_jan".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtSatoshiLight12Bluegray600)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 34, bottom: 1),
                                                      child: Text("lbl_feb".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtSatoshiLight12Bluegray600)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 34, bottom: 1),
                                                      child: Text("lbl_mar".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtSatoshiLight12Bluegray600)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 34, top: 1),
                                                      child: Text("lbl_apr".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtSatoshiLight12Bluegray600)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 34, top: 1),
                                                      child: Text("lbl_may".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtSatoshiLight12Bluegray600)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 34, bottom: 1),
                                                      child: Text("lbl_jun".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtSatoshiLight12Bluegray600))
                                                ]))
                                          ]))),
                              Padding(
                                  padding: getPadding(left: 2, top: 27),
                                  child: Row(children: [
                                    RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: "lbl_recent2".tr,
                                              style: TextStyle(
                                                  color: ColorConstant.gray900,
                                                  fontSize: getFontSize(14),
                                                  fontFamily: 'Satoshi',
                                                  fontWeight: FontWeight.w700)),
                                          TextSpan(
                                              text: "  ".tr,
                                              style: TextStyle(
                                                  color: ColorConstant.gray600,
                                                  fontSize: getFontSize(14),
                                                  fontFamily: 'Satoshi',
                                                  fontWeight: FontWeight.w700)),
                                          TextSpan(
                                              text: "lbl_12".tr,
                                              style: TextStyle(
                                                  color: ColorConstant.gray600,
                                                  fontSize: getFontSize(13),
                                                  fontFamily: 'Satoshi',
                                                  fontWeight: FontWeight.w700))
                                        ]),
                                        textAlign: TextAlign.left),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgArrowup,
                                        height: getSize(20),
                                        width: getSize(20),
                                        margin: getMargin(left: 6))
                                  ])),
                              Padding(
                                  padding: getPadding(top: 26, right: 2),
                                  child: ListView.separated(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      separatorBuilder: (context, index) {
                                        return Padding(
                                            padding: getPadding(
                                                top: 19.0, bottom: 19.0),
                                            child: SizedBox(
                                                width: getHorizontalSize(335),
                                                child: Divider(
                                                    height: getVerticalSize(1),
                                                    thickness:
                                                        getVerticalSize(1),
                                                    color: ColorConstant
                                                        .indigo50)));
                                      },
                                      itemCount: 2,
                                      itemBuilder: (context, index) {
                                        // EarningsItemModel model = controller
                                        //     .earningsItemList.value[index];
                                        return EarningsItemWidget();
                                      })),
                              Padding(
                                  padding: getPadding(top: 14),
                                  child: Divider(
                                      height: getVerticalSize(1),
                                      thickness: getVerticalSize(1),
                                      color: ColorConstant.indigo50))
                            ]))))));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] library to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleft25() {
    Get.back();
  }
}
