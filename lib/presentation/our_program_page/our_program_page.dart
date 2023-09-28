import '../our_program_page/widgets/userprofile3_item_widget.dart';
import '../our_program_page/widgets/userprofile4_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:hedi_s_application2/core/app_export.dart';
import 'package:hedi_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:hedi_s_application2/widgets/app_bar/appbar_image_1.dart';
import 'package:hedi_s_application2/widgets/app_bar/appbar_image_2.dart';
import 'package:hedi_s_application2/widgets/app_bar/custom_app_bar.dart';

class OurProgramPage extends StatelessWidget {
  const OurProgramPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            backgroundColor: Colors.transparent,
            appBar: CustomAppBar(
                leadingWidth: 39.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleftOnprimarycontainer,
                    margin:
                        EdgeInsets.only(left: 20.h, top: 19.v, bottom: 18.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                centerTitle: true,
                title: AppbarImage1(
                    svgPath: ImageConstant.imgGroup,
                    onTap: () {
                      onTapImage(context);
                    }),
                actions: [
                  AppbarImage2(
                      svgPath: ImageConstant.imgNotification,
                      margin:
                          EdgeInsets.only(left: 14.h, top: 19.v, right: 18.h)),
                  AppbarImage2(
                      svgPath: ImageConstant.imgOverflowmenu,
                      margin: EdgeInsets.fromLTRB(6.h, 19.v, 32.h, 1.v))
                ]),
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment(0.5, 0),
                        end: Alignment(0.5, 1),
                        colors: [appTheme.teal30004, appTheme.teal400])),
                child: Container(
                    width: double.maxFinite,
                    margin: EdgeInsets.only(top: 17.v),
                    padding: EdgeInsets.symmetric(vertical: 32.v),
                    decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderTL30),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(left: 19.h),
                              child: Text("All Courses",
                                  style: theme.textTheme.titleSmall)),
                          Padding(
                              padding: EdgeInsets.only(top: 8.v),
                              child: SizedBox(
                                  width: 98.h, child: Divider(indent: 20.h))),
                          Padding(
                              padding: EdgeInsets.only(left: 20.h, top: 18.v),
                              child: Text("Start",
                                  style: theme.textTheme.labelLarge)),
                          Expanded(
                              child: Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          left: 20.h, top: 17.v, right: 20.h),
                                      child: GridView.builder(
                                          shrinkWrap: true,
                                          gridDelegate:
                                              SliverGridDelegateWithFixedCrossAxisCount(
                                                  mainAxisExtent: 109.v,
                                                  crossAxisCount: 4,
                                                  mainAxisSpacing: 9.h,
                                                  crossAxisSpacing: 9.h),
                                          physics: BouncingScrollPhysics(),
                                          itemCount: 9,
                                          itemBuilder: (context, index) {
                                            return Userprofile3ItemWidget(
                                                onTapUserprofile: () {
                                              onTapUserprofile(context);
                                            });
                                          })))),
                          SizedBox(height: 36.v),
                          Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 19.h, vertical: 31.v),
                              decoration: AppDecoration.fillGray,
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Or Continue",
                                        style: theme.textTheme.labelLarge),
                                    SizedBox(height: 27.v),
                                    GridView.builder(
                                        shrinkWrap: true,
                                        gridDelegate:
                                            SliverGridDelegateWithFixedCrossAxisCount(
                                                mainAxisExtent: 109.v,
                                                crossAxisCount: 8,
                                                mainAxisSpacing: 9.h,
                                                crossAxisSpacing: 9.h),
                                        physics: NeverScrollableScrollPhysics(),
                                        itemCount: 8,
                                        itemBuilder: (context, index) {
                                          return Userprofile4ItemWidget(
                                              onTapUserprofile: () {
                                            onTapUserprofile(context);
                                          });
                                        }),
                                    SizedBox(height: 93.v)
                                  ])),
                          SizedBox(height: 5.v)
                        ])))));
  }

  /// Navigates to the courseDetailsScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the courseDetailsScreen.
  onTapUserprofile(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.courseDetailsScreen);
    Navigator.pushNamed(context, AppRoutes.courseDetailsScreen);
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the welcomePageContainerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the welcomePageContainerScreen.
  onTapImage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.welcomePageContainerScreen);
  }
}
