import 'controller/search_results_controller.dart';import 'package:flutter/material.dart';import 'package:iynfluencer/core/app_export.dart';import 'package:iynfluencer/widgets/app_bar/appbar_image.dart';import 'package:iynfluencer/widgets/app_bar/custom_app_bar.dart';import 'package:iynfluencer/widgets/custom_button.dart';import 'package:iynfluencer/widgets/custom_search_view.dart';import 'package:iynfluencer/widgets/custom_text_form_field.dart';class SearchResultsScreen extends GetWidget<SearchResultsController> {const SearchResultsScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, backgroundColor: ColorConstant.whiteA70002, appBar: CustomAppBar(height: getVerticalSize(60), leadingWidth: 50, leading: AppbarImage(height: getSize(30), width: getSize(30), svgPath: ImageConstant.imgArrowleftGray600, margin: getMargin(left: 20, top: 15, bottom: 15), onTap: () {onTapArrowleft6();}), title: CustomSearchView(width: getHorizontalSize(295), focusNode: FocusNode(), autofocus: true, controller: controller.searchController, hintText: "lbl_mark_james".tr, margin: getMargin(left: 9), padding: SearchViewPadding.PaddingT10, prefix: Container(margin: getMargin(left: 13, top: 10, right: 5, bottom: 10), child: CustomImageView(svgPath: ImageConstant.imgSearch)), prefixConstraints: BoxConstraints(maxHeight: getVerticalSize(38)), suffix: Padding(padding: EdgeInsets.only(right: getHorizontalSize(15)), child: IconButton(onPressed: () {controller.searchController.clear();}, icon: Icon(Icons.clear, color: Colors.grey.shade600)))), styleType: Style.bgOutlineIndigo50), body: Container(width: double.maxFinite, padding: getPadding(left: 1, top: 19, right: 1, bottom: 19), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Padding(padding: getPadding(left: 20), child: Text("lbl_influencers".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtSatoshiBold14Black900)), Padding(padding: getPadding(left: 17, top: 16), child: Row(children: [Card(clipBehavior: Clip.antiAlias, elevation: 0, margin: EdgeInsets.all(0), shape: RoundedRectangleBorder(side: BorderSide(color: ColorConstant.indigo50, width: getHorizontalSize(1)), borderRadius: BorderRadiusStyle.roundedBorder17), child: Container(height: getVerticalSize(238), width: getHorizontalSize(302), decoration: AppDecoration.outlineIndigo50.copyWith(borderRadius: BorderRadiusStyle.roundedBorder17), child: Stack(alignment: Alignment.bottomLeft, children: [CustomImageView(imagePath: ImageConstant.imgRectangle5059, height: getVerticalSize(102), width: getHorizontalSize(302), alignment: Alignment.topCenter), Align(alignment: Alignment.bottomLeft, child: SingleChildScrollView(scrollDirection: Axis.horizontal, padding: getPadding(left: 16, top: 66, right: 28, bottom: 20), child: IntrinsicWidth(child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerRight, child: Padding(padding: getPadding(left: 5), child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [CustomImageView(imagePath: ImageConstant.imgEllipse206, height: getVerticalSize(71), width: getHorizontalSize(68), radius: BorderRadius.circular(getHorizontalSize(35))), CustomImageView(imagePath: ImageConstant.imgEllipse206, height: getSize(71), width: getSize(71), radius: BorderRadius.circular(getHorizontalSize(35)), margin: getMargin(left: 251))]))), Align(alignment: Alignment.center, child: Padding(padding: getPadding(top: 4), child: Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: getPadding(top: 3), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Text("lbl_mark_james".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtSatoshiBold16), Padding(padding: getPadding(left: 1, top: 11), child: Text("lbl_abuja_nigeria".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtSatoshiLight1179)), CustomTextFormField(width: getHorizontalSize(154), focusNode: FocusNode(), autofocus: true, controller: controller.group903Controller, margin: getMargin(top: 4), prefix: Container(margin: getMargin(left: 30, top: 1, right: 94, bottom: 3), child: CustomImageView(svgPath: ImageConstant.imgFrameBlueGray400)), prefixConstraints: BoxConstraints(maxHeight: getVerticalSize(17)))])), CustomButton(height: getVerticalSize(32), width: getHorizontalSize(88), text: "lbl_message".tr, margin: getMargin(left: 14, bottom: 43), variant: ButtonVariant.FillGray200ab, fontStyle: ButtonFontStyle.SatoshiBold13), Spacer(), Padding(padding: getPadding(top: 8, bottom: 1), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Text("lbl_bariga_oscar2".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtSatoshiBold16), Padding(padding: getPadding(left: 1, top: 7), child: Text("lbl_abuja_nigeria".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtSatoshiLight1179)), CustomTextFormField(width: getHorizontalSize(156), focusNode: FocusNode(), autofocus: true, controller: controller.group903oneController, margin: getMargin(top: 4), textInputAction: TextInputAction.done, prefix: Container(margin: getMargin(left: 30, top: 1, right: 94, bottom: 1), child: CustomImageView(svgPath: ImageConstant.imgFrameBlueGray400)), prefixConstraints: BoxConstraints(maxHeight: getVerticalSize(15)))])), CustomButton(height: getVerticalSize(32), width: getHorizontalSize(92), text: "lbl_message".tr, margin: getMargin(left: 19, bottom: 43), variant: ButtonVariant.FillGray200ab, fontStyle: ButtonFontStyle.SatoshiBold13)])))]))))]))), Container(margin: getMargin(left: 17), decoration: AppDecoration.outlineIndigo50.copyWith(borderRadius: BorderRadiusStyle.roundedBorder17), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [SingleChildScrollView(scrollDirection: Axis.horizontal, padding: getPadding(bottom: 22), child: IntrinsicWidth(child: SizedBox(height: getVerticalSize(215), width: getHorizontalSize(37), child: Stack(alignment: Alignment.bottomRight, children: [CustomImageView(imagePath: ImageConstant.imgRectangle5059102x38, height: getVerticalSize(102), width: getHorizontalSize(38), alignment: Alignment.topCenter), Align(alignment: Alignment.bottomRight, child: SizedBox(height: getVerticalSize(73), width: getHorizontalSize(268)))]))))]))])), Padding(padding: getPadding(left: 20, top: 13, bottom: 5), child: Text("lbl_view_all".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtSatoshiLight13Blue900))])))); } 


/// Navigates to the previous screen.
///
/// When the action is triggered, this function uses the [Get] library to 
/// navigate to the previous screen in the navigation stack.
onTapArrowleft6() { Get.back(); } 
 }
