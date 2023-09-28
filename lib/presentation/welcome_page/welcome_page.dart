import '../welcome_page/widgets/userprofile1_item_widget.dart';
import '../welcome_page/widgets/userprofile2_item_widget.dart';
import '../welcome_page/widgets/userprofile_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:hedi_s_application2/core/app_export.dart';
import 'package:hedi_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:hedi_s_application2/widgets/app_bar/appbar_image_1.dart';
import 'package:hedi_s_application2/widgets/app_bar/appbar_image_2.dart';
import 'package:hedi_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:hedi_s_application2/widgets/custom_elevated_button.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            backgroundColor: Colors.transparent,
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
                title: AppbarImage1(svgPath: ImageConstant.imgGroup),
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
                child: Container(
                    width: double.maxFinite,
                    margin: EdgeInsets.only(top: 21.v),
                    padding: EdgeInsets.symmetric(vertical: 12.v),
                    decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderTL30),
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      SizedBox(
                          height: 150.v,
                          width: 340.h,
                          child:
                              Stack(alignment: Alignment.topRight, children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgAbstractbackgro,
                                height: 150.v,
                                width: 340.h,
                                radius: BorderRadius.circular(22.h),
                                alignment: Alignment.center),
                            Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                    width: 107.h,
                                    margin:
                                        EdgeInsets.only(top: 47.v, right: 42.h),
                                    child: Text(
                                        "Best Courses are\nwaiting for you",
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: CustomTextStyles
                                            .titleSmallRobotoOnPrimaryContainer)))
                          ])),
                      Padding(
                          padding: EdgeInsets.only(
                              left: 20.h, top: 33.v, right: 20.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Suggeste Courses",
                                    style: theme.textTheme.titleSmall),
                                CustomElevatedButton(
                                    height: 15.v,
                                    width: 50.h,
                                    text: "View All",
                                    margin: EdgeInsets.only(bottom: 2.v),
                                    rightIcon: Container(
                                        margin: EdgeInsets.only(left: 3.h),
                                        child: CustomImageView(
                                            svgPath: ImageConstant
                                                .img8111422leftlinearrowleftarrowarrowarrowsbackicon5)),
                                    buttonStyle: CustomButtonStyles.none,
                                    buttonTextStyle: CustomTextStyles
                                        .labelMediumPoppinsBluegray700)
                              ])),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(top: 6.v),
                              child: SizedBox(
                                  width: 98.h, child: Divider(indent: 20.h)))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 20.h, top: 18.v),
                              child: Text("Start",
                                  style: theme.textTheme.labelLarge))),
                      Expanded(
                          child: SizedBox(
                              height: 125.v,
                              child: ListView.separated(
                                  padding: EdgeInsets.only(
                                      left: 20.h, top: 17.v, right: 20.h),
                                  scrollDirection: Axis.horizontal,
                                  separatorBuilder: (context, index) {
                                    return SizedBox(width: 9.h);
                                  },
                                  itemCount: 4,
                                  itemBuilder: (context, index) {
                                    return UserprofileItemWidget(
                                        onTapUserprofile: () {
                                      onTapUserprofile(context);
                                    });
                                  }))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 20.h, top: 27.v),
                              child: Text("Or Continue",
                                  style: theme.textTheme.labelLarge))),
                      SizedBox(
                          height: 127.v,
                          child: ListView.separated(
                              padding: EdgeInsets.only(
                                  left: 19.h, top: 19.v, right: 19.h),
                              scrollDirection: Axis.horizontal,
                              separatorBuilder: (context, index) {
                                return SizedBox(width: 9.h);
                              },
                              itemCount: 4,
                              itemBuilder: (context, index) {
                                return Userprofile1ItemWidget(
                                    onTapUserprofile: () {
                                  onTapUserprofile(context);
                                });
                              })),
                      SizedBox(height: 34.v),
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 33.h, vertical: 27.v),
                          decoration: AppDecoration.fillGray,
                          child: Column(children: [
                            Text("Exam Preparation",
                                style: theme.textTheme.titleSmall),
                            SizedBox(height: 4.v),
                            SizedBox(width: 78.h, child: Divider()),
                            Padding(
                                padding: EdgeInsets.only(
                                    top: 27.v, right: 1.h, bottom: 16.v),
                                child: ListView.separated(
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    separatorBuilder: (context, index) {
                                      return SizedBox(height: 15.v);
                                    },
                                    itemCount: 3,
                                    itemBuilder: (context, index) {
                                      return Userprofile2ItemWidget();
                                    }))
                          ])),
                      SizedBox(height: 28.v),
                      Text("Testimonials",
                          style: CustomTextStyles.titleSmallBlack900),
                      SizedBox(height: 5.v),
                      SizedBox(width: 78.h, child: Divider()),
                      SizedBox(height: 20.v),
                      CustomImageView(
                          svgPath: ImageConstant.imgTrustpilot11,
                          height: 25.v,
                          width: 149.h),
                      SizedBox(height: 9.v),
                      CustomImageView(
                          svgPath: ImageConstant.imgGroup111,
                          height: 18.v,
                          width: 107.h),
                      SizedBox(height: 8.v),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("TrustScore 4.0",
                                style: CustomTextStyles.bodySmallGray60001),
                            Container(
                                height: 6.v,
                                width: 1.h,
                                margin: EdgeInsets.only(left: 7.h, bottom: 2.v),
                                decoration:
                                    BoxDecoration(color: appTheme.blueGray100)),
                            Padding(
                                padding: EdgeInsets.only(left: 6.h),
                                child: Text("12 Reviews",
                                    style: CustomTextStyles.bodySmallGray60001
                                        .copyWith(
                                            decoration:
                                                TextDecoration.underline)))
                          ]),
                      SizedBox(height: 25.v),
                      SizedBox(
                          height: 316.v,
                          width: double.maxFinite,
                          child: Stack(alignment: Alignment.center, children: [
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                    height: 197.v,
                                    width: double.maxFinite,
                                    margin: EdgeInsets.only(bottom: 24.v),
                                    padding:
                                        EdgeInsets.symmetric(vertical: 56.v),
                                    decoration: AppDecoration.fillGray,
                                    child: Stack(
                                        alignment: Alignment.bottomCenter,
                                        children: [
                                          Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Container(
                                                  height: 3.v,
                                                  width: 26.h,
                                                  decoration: BoxDecoration(
                                                      color:
                                                          appTheme.teal30003))),
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgGroup114,
                                              height: 3.v,
                                              width: 88.h,
                                              alignment: Alignment.bottomCenter)
                                        ]))),
                            Align(
                                alignment: Alignment.center,
                                child: Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 24.h),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Container(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 18.h,
                                                  vertical: 12.v),
                                              decoration: AppDecoration
                                                  .outlineBlueGrayF
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder12),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                        height: 51.v,
                                                        width: 272.h,
                                                        margin: EdgeInsets.only(
                                                            left: 2.h),
                                                        child: Stack(
                                                            alignment: Alignment
                                                                .topLeft,
                                                            children: [
                                                              CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgSearch,
                                                                  height: 35
                                                                      .adaptSize,
                                                                  width: 35
                                                                      .adaptSize),
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .topLeft,
                                                                  child: Padding(
                                                                      padding: EdgeInsets.only(
                                                                          left: 56
                                                                              .h,
                                                                          top: 7
                                                                              .v),
                                                                      child: Text(
                                                                          "Adam Smith",
                                                                          style: theme
                                                                              .textTheme
                                                                              .labelLarge))),
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .bottomLeft,
                                                                  child: Padding(
                                                                      padding: EdgeInsets.only(
                                                                          left: 57
                                                                              .h,
                                                                          bottom: 14
                                                                              .v),
                                                                      child: Text(
                                                                          "12 Reviews",
                                                                          style:
                                                                              CustomTextStyles.bodySmallGray60001))),
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .bottomCenter,
                                                                  child: Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Row(
                                                                            children: [
                                                                              CustomImageView(svgPath: ImageConstant.img3643744locatio, height: 8.adaptSize, width: 8.adaptSize, margin: EdgeInsets.only(bottom: 1.v)),
                                                                              Padding(padding: EdgeInsets.only(left: 3.h), child: Text("GB", style: CustomTextStyles.bodySmallGray60001))
                                                                            ]),
                                                                        SizedBox(
                                                                            height:
                                                                                13.v),
                                                                        Divider(
                                                                            color:
                                                                                appTheme.gray300)
                                                                      ]))
                                                            ])),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 2.h,
                                                                top: 17.v,
                                                                right: 6.h),
                                                        child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              CustomImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgGroup111Red50002,
                                                                  height: 20.v,
                                                                  width: 116.h),
                                                              Padding(
                                                                  padding: EdgeInsets
                                                                      .only(
                                                                          bottom: 8
                                                                              .v),
                                                                  child: Text(
                                                                      "5 days ago",
                                                                      style: CustomTextStyles
                                                                          .bodySmallGray60001))
                                                            ])),
                                                    SizedBox(height: 16.v),
                                                    SizedBox(
                                                        width: 272.h,
                                                        child: Text(
                                                            "Lorem ipsum dolor sit amet consectetur. Eget nascetur tristique feugiat urna. Arcu id id aliquet lectus. Semper odio ullamcorper viverra nibh eget egestas venenatis a. Purus in amet lorem nisi congue mollis eget. Convallis molestie habitasse massa aliquet ut adipiscing pretium quis sit. Massa elementum et elit sem lectus. ",
                                                            maxLines: 5,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            style: CustomTextStyles
                                                                .bodySmallBluegray300
                                                                .copyWith(
                                                                    height:
                                                                        1.38))),
                                                    SizedBox(height: 13.v),
                                                    Row(children: [
                                                      Text(
                                                          "Date of experience:",
                                                          style: CustomTextStyles
                                                              .labelSmallRobotoMedium),
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 6.h),
                                                          child: Text(
                                                              "December 01, 2022",
                                                              style: CustomTextStyles
                                                                  .labelSmallRobotoGray60001))
                                                    ]),
                                                    SizedBox(height: 9.v)
                                                  ])),
                                          CustomElevatedButton(
                                              text: "Need Help? Ask Us",
                                              margin: EdgeInsets.only(
                                                  left: 5.h,
                                                  top: 50.v,
                                                  right: 6.h),
                                              rightIcon: Container(
                                                  margin: EdgeInsets.only(),
                                                  child: CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgButtonPrimaryBackground)),
                                              buttonStyle: CustomButtonStyles
                                                  .fillPrimary1)
                                        ])))
                          ])),
                      Padding(
                          padding: EdgeInsets.fromLTRB(55.h, 22.v, 55.h, 5.v),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Terms & Conditions",
                                    style: CustomTextStyles
                                        .labelSmallRobotoBluegray300
                                        .copyWith(
                                            decoration:
                                                TextDecoration.underline)),
                                Text("Privacy Policy",
                                    style: CustomTextStyles
                                        .labelSmallRobotoBluegray300
                                        .copyWith(
                                            decoration:
                                                TextDecoration.underline))
                              ]))
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
}
