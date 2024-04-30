import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iynfluencer/data/models/Jobs/job_model.dart';
import 'package:iynfluencer/presentation/job_details_screen/controller/job_details_controller.dart';
import 'package:iynfluencer/presentation/job_details_screen/job_details_screen.dart';
import 'package:iynfluencer/widgets/custom_loading.dart';
import 'package:iynfluencer/widgets/error_widget.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../creator_job_details/controller/creator_job_detail_controller.dart';
import '../creator_job_details/creator_job_details_screen.dart';
import '../creator_jobslist_page/widgets/jobposting_item_widget.dart';
import '../home_creator_container_screen/controller/home_creator_container_controller.dart';
import 'controller/creator_jobslist_controller.dart';
import 'models/creator_jobslist_model.dart';
import 'package:flutter/material.dart';
import 'package:iynfluencer/core/app_export.dart';
import '../../widgets/skeletons.dart';

class CreatorJobslistPage extends StatefulWidget {
  CreatorJobslistPage({Key? key}) : super(key: key);

  @override
  State<CreatorJobslistPage> createState() => _CreatorJobslistPageState();
}

class _CreatorJobslistPageState extends State<CreatorJobslistPage>
    with SingleTickerProviderStateMixin {
  late CreatorJobslistController controller;
  BottomBarController bumcont=Get.put(BottomBarController());
  HomeCreatorContainerController  homcont = Get.put(HomeCreatorContainerController());


  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  // Initialize creatorJobslistModelObj here
  final creatorJobslistModelObj = CreatorJobslistModel();

  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat();
    // Create the controller using jobpostingItemList from creatorJobslistModelObj
    // Create the controller using jobpostingItemList from creatorJobslistModelObj
    controller = Get.put(CreatorJobslistController(
      creatorJobslistModelObj.jobpostingItemList,
    ));
  }

  @override
  void dispose() {
    animationController.dispose();
    bumcont.dispose();
    homcont.dispose();
    super.dispose();
  }

  onTapDetailcard(Job selectedJob) {
    final jobDetailsController = Get.put(CreatorJobDetailsController());
    jobDetailsController.setSelectedJob(selectedJob);
    Get.to(()=>
        CreatorJobDetailsScreen(selectedJob: selectedJob),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Initialize screen_util
    ScreenUtil.init(context, designSize: Size(360, 690), minTextAdapt: false);

    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        backgroundColor: Colors.transparent,
        body: Obx(
              () {
            if (controller.isTrendLoading.value) {
              return CustomLoadingWidget(
                animationController: animationController,
              );
            } else if (controller.error.value.isNotEmpty) {
              return ResponsiveErrorWidget(
                errorMessage: controller.error.value,
                onRetry: () {
                  controller.getJobs();
                  // ... [rest of the error handling code]
                },
                fullPage: true,
              );
            }else if(controller.empty) {
              return ResponsiveEmptyWidget(
                errorMessage: 'You have not posed any jobs yet',
                buttonText: "Post job",
                onRetry: () {
                  homcont.currentRoute.value=AppRoutes.postPageScreen;
                   Navigator.of(Get.nestedKey(1)!.currentState!.context).pushReplacementNamed(AppRoutes.postPageScreen);
                  bumcont.selectedIndex.value=2;
                },
                fullPage: true,
              );
            }
            else {
              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Obx(
                          () => ListView.separated(
                        physics: BouncingScrollPhysics(),
                        itemCount: controller.isTrendLoading.value
                            ? 5
                            : controller.existingJobs.length,
                        separatorBuilder: (context, index) {
                          return SizedBox(height: 20.h);
                        },
                        itemBuilder: (context, index) {
                          if (controller.isTrendLoading.value) {
                            return TrendinghorizonItemSkeletonWidget();
                          } else {
                            Job model = controller.existingJobs[index];
                            return JobpostingItemWidget(
                              creatorJobslistModelObj: model,
                              index: index,
                              onTapDetailcard: () {
                                onTapDetailcard(model);
                              },
                            );
                          }
                        },
                      ),
                    ),
                  ),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
