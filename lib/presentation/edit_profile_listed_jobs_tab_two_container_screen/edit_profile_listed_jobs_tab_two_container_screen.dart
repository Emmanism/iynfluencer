import 'package:flutter/material.dart';
import 'package:iynfluencer/core/app_export.dart';
import 'package:iynfluencer/data/general_controllers/user_controller.dart';
import 'package:iynfluencer/data/models/use_model/user_model.dart';
import 'package:iynfluencer/presentation/complete_profile_creator_screen/models/complete_profile_creator_model.dart';
import 'package:iynfluencer/presentation/creator_profile_draweritem/creator_profile_draweritem.dart';
import 'package:iynfluencer/presentation/creator_profile_listed_jobs_page/creator_profile_listed_jobs_page.dart';
import 'package:iynfluencer/presentation/edit_profile_listed_jobs_tab_two_container_screen/controller/edit_profile_listed_jobs_tab_two_container_controller.dart';
import 'package:iynfluencer/presentation/home_creator_page/controller/home_creator_controller.dart';
import 'package:iynfluencer/presentation/home_creator_page/models/home_creator_model.dart';
import 'package:iynfluencer/widgets/custom_button.dart';

class EditProfileListedJobsTabTwoContainerScreen
    extends GetWidget<EditProfileListedJobsTabTwoContainerController> {
  EditProfileListedJobsTabTwoContainerScreen({
    Key? key,
    this.updatedProfile,
    this.updatedProfileImagePath,
  }) : super(key: key);

  final Users? updatedProfile;
  final String? updatedProfileImagePath;
  final UserController userController = Get.find();

  @override
  Widget build(BuildContext context) {
    String? capitalizeFirstLetter(String? text) {
      if (text == null || text.isEmpty) {
        return text;
      }
      return text[0].toUpperCase() + text.substring(1);
    }

    final name =
        "${capitalizeFirstLetter(updatedProfile?.firstName ?? "")} ${capitalizeFirstLetter(updatedProfile?.lastName ?? "")}";

    String updatedProfileImage =
        updatedProfileImagePath ?? ImageConstant.imgGroup947;
    String updatedCountry = updatedProfile?.country ?? "";

    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                      SizedBox(
                          height: getVerticalSize(325),
                          width: double.maxFinite,
                          child:
                              Stack(alignment: Alignment.bottomLeft, children: [
                            Align(
                                alignment: Alignment.topCenter,
                                child: SizedBox(
                                    height: getVerticalSize(170),
                                    width: double.maxFinite,
                                    child: Stack(
                                        alignment: Alignment.topLeft,
                                        children: [
                                          CustomImageView(
                                              imagePath: updatedProfileImage,
                                              height: getVerticalSize(170),
                                              width: getHorizontalSize(375),
                                              alignment: Alignment.center),
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgArrowleftGray200,
                                              height: getSize(30),
                                              width: getSize(30),
                                              alignment: Alignment.topLeft,
                                              margin:
                                                  getMargin(left: 15, top: 14),
                                              onTap: () {
                                                onTapImgArrowleft();
                                              })
                                        ]))),
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                    padding: getPadding(left: 20),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgGroup947,
                                              height: getSize(85),
                                              width: getSize(85),
                                              radius: BorderRadius.circular(
                                                  getSize(42.5)),
                                              margin: getMargin(left: 7)),
                                          Padding(
                                              padding: getPadding(top: 11),
                                              child: Text(name,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtSatoshiBold24)),
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Row(children: [
                                                Text(updatedCountry,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtSatoshiLight14),
                                                Card(
                                                    clipBehavior:
                                                        Clip.antiAlias,
                                                    elevation: 0,
                                                    margin: getMargin(
                                                        left: 10, bottom: 4),
                                                    color:
                                                        ColorConstant.gray20001,
                                                    shape: RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .circleBorder7),
                                                    child: Container(
                                                        height: getSize(14),
                                                        width: getSize(14),
                                                        decoration: AppDecoration
                                                            .fillGray20001
                                                            .copyWith(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .circleBorder7),
                                                        child: Stack(children: [
                                                          CustomImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgContrast,
                                                              height:
                                                                  getVerticalSize(
                                                                      13),
                                                              width:
                                                                  getHorizontalSize(
                                                                      14),
                                                              alignment:
                                                                  Alignment
                                                                      .center)
                                                        ])))
                                              ])),
                                          CustomButton(
                                              height: getVerticalSize(34),
                                              width: getHorizontalSize(110),
                                              text: "lbl_edit_profile".tr,
                                              margin: getMargin(top: 13),
                                              variant:
                                                  ButtonVariant.FillGray200ab,
                                              padding:
                                                  ButtonPadding.PaddingAll4,
                                              fontStyle: ButtonFontStyle
                                                  .SatoshiBold15Gray900,
                                              onTap: () {
                                                onTapEditprofile();
                                              })
                                        ])))
                          ])),
                      Container(
                          height: getVerticalSize(44),
                          width: double.maxFinite,
                          margin: getMargin(top: 11),
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      color: ColorConstant.indigo50,
                                      width: getHorizontalSize(1)))),
                          child: TabBar(
                              controller: controller.tabviewController,
                              labelColor: ColorConstant.cyan300,
                              labelStyle: TextStyle(
                                  fontSize: getFontSize(14.5),
                                  fontFamily: 'Satoshi',
                                  fontWeight: FontWeight.w300),
                              unselectedLabelColor: ColorConstant.gray600,
                              unselectedLabelStyle: TextStyle(
                                  fontSize: getFontSize(14),
                                  fontFamily: 'Satoshi',
                                  fontWeight: FontWeight.w300),
                              indicator: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: ColorConstant.cyan300,
                                          width: getHorizontalSize(2)))),
                              tabs: [
                                Tab(
                                    child: Text("lbl_listed_jobs".tr,
                                        overflow: TextOverflow.ellipsis)),
                                Tab(
                                    child: Text("lbl_community_posts".tr,
                                        overflow: TextOverflow.ellipsis))
                              ])),
                      SizedBox(
                          height: getVerticalSize(882),
                          child: TabBarView(
                              controller: controller.tabviewController,
                              children: [
                                CreatorProfileListedJobsPage(),
                                CreatorProfileListedJobsPage()
                              ]))
                    ]))),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(34),
                width: getHorizontalSize(110),
                text: "lbl_edit".tr,
                margin: getMargin(left: 133, right: 132, bottom: 29),
                variant: ButtonVariant.FillGray20087,
                shape: ButtonShape.RoundedBorder3,
                padding: ButtonPadding.PaddingAll4,
                fontStyle: ButtonFontStyle.SatoshiBold15Gray900)));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] library to
  /// navigate to the previous screen in the navigation stack.
  onTapImgArrowleft() async {
    final homeController = Get.find<HomeCreatorController>();

    // Call editCreatorProfile and wait for the result
    Map<String, dynamic>? result = await userController.editCreatorProfile(
      bio: '',
      niches: '',
      firstName: '',
      lastName: '',
      country: '',
      profileImageFile: null,
    );

    if (result != null) {
      // Update the profile data
      homeController.updateProfileData(result);
    } else {
      Get.snackbar('Error', 'Failed to update profile');
    }

    // Navigate back
    Get.back();
  }

  /// Navigates to the editProfileDetailsScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the editProfileDetailsScreen.
  onTapEditprofile() {
    Get.toNamed(
      AppRoutes.editProfileDetailsOneScreen,
    );
  }
}
