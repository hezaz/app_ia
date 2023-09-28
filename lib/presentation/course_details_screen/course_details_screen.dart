import 'package:flutter/material.dart';
import 'package:hedi_s_application2/core/app_export.dart';
import 'package:hedi_s_application2/presentation/welcome_page/welcome_page.dart';
import 'package:hedi_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:hedi_s_application2/widgets/app_bar/appbar_image_1.dart';
import 'package:hedi_s_application2/widgets/app_bar/appbar_image_2.dart';
import 'package:hedi_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:hedi_s_application2/widgets/custom_bottom_bar.dart';
import 'package:hedi_s_application2/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class CourseDetailsScreen extends StatelessWidget {
  CourseDetailsScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            appBar: CustomAppBar(
                leadingWidth: 48.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleftOnprimarycontainer,
                    margin:
                        EdgeInsets.only(left: 29.h, top: 19.v, bottom: 18.v),
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
                          EdgeInsets.only(left: 14.h, top: 19.v, right: 19.h)),
                  AppbarImage2(
                      svgPath: ImageConstant.imgOverflowmenu,
                      margin: EdgeInsets.fromLTRB(6.h, 20.v, 33.h, 1.v))
                ]),
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment(0.5, 0),
                        end: Alignment(0.5, 1),
                        colors: [appTheme.teal30004, appTheme.teal400])),
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(children: [
                      SizedBox(height: 13.v),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Container(
                                  padding: EdgeInsets.all(10.h),
                                  decoration: AppDecoration
                                      .fillOnPrimaryContainer
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .customBorderTL30),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                            height: 215.v,
                                            width: 340.h,
                                            child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgAbstractbackgro215x340,
                                                      height: 215.v,
                                                      width: 340.h,
                                                      radius:
                                                          BorderRadius.circular(
                                                              22.h),
                                                      alignment:
                                                          Alignment.center),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgScreenshot102,
                                                      height: 215.v,
                                                      width: 340.h,
                                                      radius:
                                                          BorderRadius.circular(
                                                              22.h),
                                                      alignment:
                                                          Alignment.center)
                                                ])),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 10.h, top: 31.v),
                                            child: Text(
                                                "Unity Game Development",
                                                style: theme
                                                    .textTheme.titleSmall)),
                                        Padding(
                                            padding: EdgeInsets.only(top: 7.v),
                                            child: SizedBox(
                                                width: 88.h,
                                                child: Divider(indent: 10.h))),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 10.h, top: 15.v),
                                            child: Row(children: [
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgUnion,
                                                  height: 5.adaptSize,
                                                  width: 5.adaptSize),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 6.h, top: 2.v),
                                                  child: Text("Schedule Now",
                                                      style: CustomTextStyles
                                                          .bodySmallGray600028)),
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .img3671880timeicon,
                                                  height: 5.adaptSize,
                                                  width: 5.adaptSize),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 6.h, top: 2.v),
                                                  child: Text("8 Hours",
                                                      style: CustomTextStyles
                                                          .bodySmallGray600028))
                                            ])),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 10.h, top: 17.v),
                                            child: Text(
                                                "Overview".toUpperCase(),
                                                style: theme
                                                    .textTheme.labelSmall)),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                                width: 311.h,
                                                margin: EdgeInsets.only(
                                                    left: 10.h,
                                                    top: 13.v,
                                                    right: 18.h),
                                                child: Text(
                                                    "This Unity course is for absolute beginners & for seasoned programmers!\nThis course will take you down a guided learning path. You'll learn to code in C# and then go on to build 2D & 3D games. Not only will you build games, but you will learn how to do it the way the pros do. We'll even cover advanced topics like lighting, cinematics, and multiplayer.",
                                                    maxLines: 5,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: CustomTextStyles
                                                        .bodySmallGray600028
                                                        .copyWith(
                                                            height: 1.50)))),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 10.h, top: 13.v),
                                            child: Text("OBJECTIVES",
                                                style: theme
                                                    .textTheme.labelSmall)),
                                        Container(
                                            width: 308.h,
                                            margin: EdgeInsets.only(
                                                left: 8.h,
                                                top: 16.v,
                                                right: 22.h),
                                            child: Text(
                                                "Here are some of the things you will learn:\n\nInstallation & setup\nPhysics\nPathfinding\nBasic artificial intelligence\nLightning & lightmapping\nCamera animations & cutscenes\nCharacter animations\nScripting, scripting, scripting!\nMaterials & skyboxes\nSound FX & music\nMultiplayer over LAN & Internet\nParticle FX\nMelee & ranged battle systems\nTower Defense Game\nAdventure Game\nZombies!\nAnd a ton more....\nAnd don't forget about our FREE chatroom where you can get live help, interact with the community, \nand find people to start your own game studio.",
                                                maxLines: 22,
                                                overflow: TextOverflow.ellipsis,
                                                style: CustomTextStyles
                                                    .bodySmallGray600028
                                                    .copyWith(height: 1.50))),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 10.h, top: 15.v),
                                            child: Row(children: [
                                              Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 3.v),
                                                  child: Text(
                                                      "EXPERIENCE LEVEL",
                                                      style: theme.textTheme
                                                          .labelSmall)),
                                              Container(
                                                  height: 17.v,
                                                  width: 42.h,
                                                  margin: EdgeInsets.only(
                                                      left: 9.h),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.center,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .bottomCenter,
                                                            child: Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        bottom: 2
                                                                            .v),
                                                                child: Text(
                                                                    "245 XP",
                                                                    style: CustomTextStyles
                                                                        .labelSmallRobotoPrimary))),
                                                        Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: Container(
                                                                height: 17.v,
                                                                width: 42.h,
                                                                decoration: BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius.circular(8
                                                                            .h),
                                                                    border: Border.all(
                                                                        color: theme
                                                                            .colorScheme
                                                                            .primary,
                                                                        width: 1
                                                                            .h))))
                                                      ]))
                                            ])),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 10.h, top: 14.v),
                                            child: RichText(
                                                text: TextSpan(children: [
                                                  TextSpan(
                                                      text: "255€",
                                                      style: CustomTextStyles
                                                          .titleMediumRedRosePrimary),
                                                  TextSpan(text: " "),
                                                  TextSpan(
                                                      text: "/",
                                                      style: CustomTextStyles
                                                          .titleSmallGray60002),
                                                  TextSpan(text: " "),
                                                  TextSpan(
                                                      text: "Session",
                                                      style: CustomTextStyles
                                                          .labelSmallGray60002)
                                                ]),
                                                textAlign: TextAlign.left)),
                                        CustomElevatedButton(
                                            height: 32.v,
                                            width: 120.h,
                                            text: "Register Now",
                                            margin: EdgeInsets.only(
                                                left: 10.h,
                                                top: 22.v,
                                                bottom: 94.v),
                                            buttonStyle: CustomButtonStyles
                                                .fillPrimaryTL16,
                                            buttonTextStyle: CustomTextStyles
                                                .labelLargeRobotoOnPrimaryContainer)
                                      ]))))
                    ]))),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Navigator.pushNamed(
                  navigatorKey.currentContext!, getCurrentRoute(type));
            })));
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.welcomePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.welcomePage:
        return WelcomePage();
      default:
        return DefaultWidget();
    }
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
