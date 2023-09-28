import '../profile_page/widgets/gameprofile_item_widget.dart';
import '../profile_page/widgets/pdfdocuments_item_widget.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:hedi_s_application2/core/app_export.dart';
import 'package:hedi_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:hedi_s_application2/widgets/app_bar/appbar_image_1.dart';
import 'package:hedi_s_application2/widgets/app_bar/appbar_image_2.dart';
import 'package:hedi_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:hedi_s_application2/widgets/custom_radio_button.dart';
import 'package:hedi_s_application2/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  String radioGroup = "";

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            backgroundColor: Colors.transparent,
            resizeToAvoidBottomInset: false,
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
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 8.v),
                    child: SizedBox(
                        height: 1736.v,
                        width: double.maxFinite,
                        child: Stack(alignment: Alignment.topCenter, children: [
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20.h, vertical: 89.v),
                                  decoration: AppDecoration
                                      .fillOnPrimaryContainer
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .customBorderTL30),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SizedBox(height: 13.v),
                                        Text("My Profile".toUpperCase(),
                                            style: theme.textTheme.titleSmall),
                                        SizedBox(height: 5.v),
                                        SizedBox(width: 78.h, child: Divider()),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                top: 16.v, right: 57.h),
                                            child: Row(children: [
                                              Text("First Name:",
                                                  style: theme
                                                      .textTheme.labelMedium),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 8.h),
                                                  child: Text("Adam",
                                                      style: CustomTextStyles
                                                          .labelMediumRobotoGray60002)),
                                              Spacer(),
                                              Text("Last Name:",
                                                  style: theme
                                                      .textTheme.labelMedium),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 8.h),
                                                  child: Text("Smith",
                                                      style: CustomTextStyles
                                                          .labelMediumRobotoGray60002))
                                            ])),
                                        SizedBox(height: 10.v),
                                        Divider(
                                            color: appTheme.teal30003
                                                .withOpacity(0.3)),
                                        SizedBox(height: 8.v),
                                        Row(children: [
                                          RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                    text: "Enrolled In"
                                                        .toUpperCase(),
                                                    style: theme
                                                        .textTheme.labelMedium),
                                                TextSpan(
                                                    text: ":".toUpperCase(),
                                                    style: theme
                                                        .textTheme.labelMedium)
                                              ]),
                                              textAlign: TextAlign.left),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 6.h),
                                              child: Text("Scratch (Continue)",
                                                  style: CustomTextStyles
                                                      .labelMediumRobotoGray60002))
                                        ]),
                                        SizedBox(height: 10.v),
                                        Divider(
                                            color: appTheme.teal30003
                                                .withOpacity(0.3)),
                                        SizedBox(height: 8.v),
                                        Row(children: [
                                          Text("Number of classes attended:",
                                              style:
                                                  theme.textTheme.labelMedium),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 5.h),
                                              child: Text("15",
                                                  style: CustomTextStyles
                                                      .labelMediumRobotoGray60002))
                                        ]),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                top: 18.v, right: 10.h),
                                            child: Row(children: [
                                              Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 5.v),
                                                  child: Text(
                                                      "XP:".toUpperCase(),
                                                      style: theme.textTheme
                                                          .labelMedium)),
                                              Container(
                                                  height: 24.v,
                                                  width: 279.h,
                                                  margin: EdgeInsets.only(
                                                      left: 12.h),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      children: [
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgGroupTeal30002,
                                                            height: 24.v,
                                                            width: 279.h,
                                                            alignment: Alignment
                                                                .center),
                                                        Align(
                                                            alignment: Alignment
                                                                .centerRight,
                                                            child: Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        right: 22
                                                                            .h),
                                                                child: Text(
                                                                    "100",
                                                                    style: CustomTextStyles
                                                                        .labelSmallRobotoOnPrimaryContainer)))
                                                      ]))
                                            ])),
                                        SizedBox(height: 26.v),
                                        Text("Announcements:\r".toUpperCase(),
                                            style: theme.textTheme.labelMedium),
                                        SizedBox(height: 4.v),
                                        SizedBox(width: 78.h, child: Divider()),
                                        SizedBox(height: 25.v),
                                        Container(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 9.v),
                                            decoration: AppDecoration.fillGray,
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  CustomImageView(
                                                      svgPath:
                                                          ImageConstant.imgEdit,
                                                      height: 13.v,
                                                      width: 14.h),
                                                  Text(
                                                      "Eiusmod tempor incididunt ut dolore magna...",
                                                      style: CustomTextStyles
                                                          .labelSmallRobotoGray60002
                                                          .copyWith(
                                                              decoration:
                                                                  TextDecoration
                                                                      .underline)),
                                                  Text(
                                                      "29 Minutes ago, at 6:23 PM ",
                                                      style: CustomTextStyles
                                                          .bodySmallGray600028)
                                                ])),
                                        SizedBox(height: 8.v),
                                        Container(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 9.v),
                                            decoration: AppDecoration.fillGray,
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  CustomImageView(
                                                      svgPath:
                                                          ImageConstant.imgEdit,
                                                      height: 13.v,
                                                      width: 14.h),
                                                  Text(
                                                      "Eiusmod tempor incididunt ut dolore magna...",
                                                      style: CustomTextStyles
                                                          .labelSmallRobotoGray60002
                                                          .copyWith(
                                                              decoration:
                                                                  TextDecoration
                                                                      .underline)),
                                                  Text(
                                                      "29 Minutes ago, at 6:23 PM ",
                                                      style: CustomTextStyles
                                                          .bodySmallGray600028)
                                                ])),
                                        SizedBox(height: 8.v),
                                        Container(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 9.v),
                                            decoration: AppDecoration.fillGray,
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  CustomImageView(
                                                      svgPath:
                                                          ImageConstant.imgEdit,
                                                      height: 13.v,
                                                      width: 14.h),
                                                  Text(
                                                      "Eiusmod tempor incididunt ut dolore magna...",
                                                      style: CustomTextStyles
                                                          .labelSmallRobotoGray60002
                                                          .copyWith(
                                                              decoration:
                                                                  TextDecoration
                                                                      .underline)),
                                                  Text(
                                                      "29 Minutes ago, at 6:23 PM ",
                                                      style: CustomTextStyles
                                                          .bodySmallGray600028)
                                                ])),
                                        SizedBox(height: 20.v),
                                        Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 7.v, bottom: 6.v),
                                                  child: SizedBox(
                                                      width: 137.h,
                                                      child: Divider(
                                                          color: appTheme
                                                              .teal30003
                                                              .withOpacity(
                                                                  0.3)))),
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgImage4,
                                                  height: 14.adaptSize,
                                                  width: 14.adaptSize),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 7.v, bottom: 6.v),
                                                  child: SizedBox(
                                                      width: 137.h,
                                                      child: Divider(
                                                          color: appTheme
                                                              .teal30003
                                                              .withOpacity(
                                                                  0.3))))
                                            ]),
                                        SizedBox(height: 20.v),
                                        Text("My Class".toUpperCase(),
                                            style: theme.textTheme.labelMedium),
                                        SizedBox(height: 4.v),
                                        Container(
                                            height: 2.v,
                                            width: 45.h,
                                            decoration: BoxDecoration(
                                                color: appTheme.teal30003)),
                                        SizedBox(height: 20.v),
                                        Row(children: [
                                          Text("Course Name:",
                                              style:
                                                  theme.textTheme.labelMedium),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 8.h),
                                              child: Text("Scratch (Continue)",
                                                  style: CustomTextStyles
                                                      .bodySmallGray60002))
                                        ]),
                                        SizedBox(height: 10.v),
                                        Divider(
                                            color: appTheme.teal30003
                                                .withOpacity(0.3)),
                                        SizedBox(height: 8.v),
                                        Row(children: [
                                          Text("Number of Session:",
                                              style:
                                                  theme.textTheme.labelMedium),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 5.h),
                                              child: Text("6 Session",
                                                  style: CustomTextStyles
                                                      .bodySmallGray60002))
                                        ]),
                                        SizedBox(height: 11.v),
                                        Divider(
                                            color: appTheme.teal30003
                                                .withOpacity(0.3)),
                                        SizedBox(height: 8.v),
                                        Row(children: [
                                          Text("Class of:",
                                              style:
                                                  theme.textTheme.labelMedium),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 5.h),
                                              child: Text("3",
                                                  style: CustomTextStyles
                                                      .bodySmallGray60002))
                                        ]),
                                        SizedBox(height: 19.v),
                                        Text("Other Students".toUpperCase(),
                                            style: theme.textTheme.labelMedium),
                                        SizedBox(height: 4.v),
                                        Container(
                                            height: 2.v,
                                            width: 45.h,
                                            decoration: BoxDecoration(
                                                color: appTheme.teal30003)),
                                        SizedBox(height: 20.v),
                                        CustomSearchView(
                                            controller: searchController,
                                            hintText: "Lucille J. Pfeifer",
                                            prefix: Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    12.h, 6.v, 16.h, 5.v),
                                                child: CustomImageView(
                                                    imagePath:
                                                        ImageConstant.imgSearch,
                                                    height: 32.adaptSize,
                                                    width: 32.adaptSize)),
                                            prefixConstraints:
                                                BoxConstraints(maxHeight: 43.v),
                                            suffix: Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    30.h, 7.v, 20.h, 7.v),
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .img2400493conversationmessagemessageBubbletalkchaticon1)),
                                            suffixConstraints: BoxConstraints(
                                                maxHeight: 43.v)),
                                        SizedBox(height: 8.v),
                                        Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 12.h,
                                                vertical: 5.v),
                                            decoration: AppDecoration.fillGray,
                                            child: Row(children: [
                                              Container(
                                                  height: 32.adaptSize,
                                                  width: 32.adaptSize,
                                                  margin:
                                                      EdgeInsets.only(top: 1.v),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.center,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgAdultg37be9717e640,
                                                            height:
                                                                32.adaptSize,
                                                            width: 32.adaptSize,
                                                            radius: BorderRadius
                                                                .circular(16.h),
                                                            alignment: Alignment
                                                                .center),
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgAdultge1266fa0d640,
                                                            height:
                                                                32.adaptSize,
                                                            width: 32.adaptSize,
                                                            radius: BorderRadius
                                                                .circular(16.h),
                                                            alignment: Alignment
                                                                .center)
                                                      ])),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 16.h,
                                                      top: 11.v,
                                                      bottom: 9.v),
                                                  child: Text(
                                                      "Donnell E. Adkins",
                                                      style: CustomTextStyles
                                                          .labelMediumRobotoMedium
                                                          .copyWith(
                                                              decoration:
                                                                  TextDecoration
                                                                      .underline))),
                                              Spacer(),
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .img2400493conversationmessagemessageBubbletalkchaticon1,
                                                  height: 29.adaptSize,
                                                  width: 29.adaptSize,
                                                  margin: EdgeInsets.only(
                                                      top: 1.v, right: 8.h))
                                            ])),
                                        SizedBox(height: 25.v),
                                        Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 1.h),
                                                        child: Text(
                                                            "Calender"
                                                                .toUpperCase(),
                                                            style: theme
                                                                .textTheme
                                                                .labelMedium)),
                                                    SizedBox(height: 4.v),
                                                    Container(
                                                        height: 2.v,
                                                        width: 45.h,
                                                        decoration:
                                                            BoxDecoration(
                                                                color: appTheme
                                                                    .teal30003))
                                                  ]),
                                              Spacer(),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 5.v, bottom: 2.v),
                                                  child: Text("January",
                                                      style: CustomTextStyles
                                                          .labelMediumRoboto)),
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgVector,
                                                  height: 3.v,
                                                  width: 7.h,
                                                  margin: EdgeInsets.only(
                                                      left: 6.h,
                                                      top: 8.v,
                                                      bottom: 7.v))
                                            ]),
                                        SizedBox(height: 23.v),
                                        Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgArrowleft,
                                                  height: 17.v,
                                                  width: 10.h),
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgOffer,
                                                  height: 52.v,
                                                  width: 37.h),
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgUserTeal50,
                                                  height: 52.v,
                                                  width: 37.h),
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgFile,
                                                  height: 52.v,
                                                  width: 37.h),
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgOfferTeal50,
                                                  height: 52.v,
                                                  width: 37.h),
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgMusic,
                                                  height: 52.v,
                                                  width: 37.h),
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgArrowright,
                                                  height: 17.v,
                                                  width: 10.h)
                                            ]),
                                        SizedBox(height: 30.v),
                                        Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 9.h, vertical: 7.v),
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder12),
                                            child: Column(children: [
                                              SizedBox(
                                                  height: 111.v,
                                                  width: 300.h,
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.center,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .img1kfakbnusqst00bmjaxciag111x300,
                                                            height: 111.v,
                                                            width: 300.h,
                                                            radius: BorderRadius
                                                                .circular(12.h),
                                                            alignment: Alignment
                                                                .center),
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgScreenshot101110x300,
                                                            height: 110.v,
                                                            width: 300.h,
                                                            radius: BorderRadius
                                                                .circular(12.h),
                                                            alignment: Alignment
                                                                .center)
                                                      ])),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 11.h,
                                                      top: 11.v,
                                                      right: 18.h),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text("Unity",
                                                                  style: theme
                                                                      .textTheme
                                                                      .labelLarge),
                                                              SizedBox(
                                                                  height: 2.v),
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  child: Text(
                                                                      "Programming",
                                                                      style: CustomTextStyles
                                                                          .robotoGray500))
                                                            ]),
                                                        Spacer(),
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgIcroundaccesstime,
                                                            height:
                                                                16.adaptSize,
                                                            width: 16.adaptSize,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    bottom:
                                                                        8.v)),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 6.h,
                                                                    top: 2.v,
                                                                    bottom:
                                                                        9.v),
                                                            child: Text(
                                                                "7PM - 9PM",
                                                                style: CustomTextStyles
                                                                    .bodySmallRedRoseBluegray800))
                                                      ])),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 12.v),
                                                  child: Divider(
                                                      color: appTheme.teal30003
                                                          .withOpacity(0.3),
                                                      indent: 13.h,
                                                      endIndent: 12.h)),
                                              SizedBox(height: 12.v),
                                              Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgVectorPrimary,
                                                        height: 4.v,
                                                        width: 6.h),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 7.h),
                                                        child: Text(
                                                            "I will attentd",
                                                            style: CustomTextStyles
                                                                .labelSmallRoboto)),
                                                    CustomRadioButton(
                                                        text:
                                                            "I will not attentd",
                                                        value:
                                                            "I will not attentd",
                                                        groupValue: radioGroup,
                                                        margin: EdgeInsets.only(
                                                            left: 21.h),
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                vertical: 1.v),
                                                        onChange: (value) {
                                                          radioGroup = value;
                                                        })
                                                  ]),
                                              SizedBox(height: 8.v)
                                            ])),
                                        SizedBox(height: 29.v),
                                        Text("My Projects".toUpperCase(),
                                            style: theme.textTheme.labelMedium),
                                        SizedBox(height: 4.v),
                                        Container(
                                            height: 2.v,
                                            width: 45.h,
                                            decoration: BoxDecoration(
                                                color: appTheme.teal30003)),
                                        SizedBox(height: 16.v),
                                        ListView.separated(
                                            physics:
                                                NeverScrollableScrollPhysics(),
                                            shrinkWrap: true,
                                            separatorBuilder: (context, index) {
                                              return Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 7.5.v),
                                                  child: SizedBox(
                                                      width: 320.h,
                                                      child: Divider(
                                                          height: 1.v,
                                                          thickness: 1.v,
                                                          color: appTheme
                                                              .teal30003
                                                              .withOpacity(
                                                                  0.3))));
                                            },
                                            itemCount: 3,
                                            itemBuilder: (context, index) {
                                              return GameprofileItemWidget();
                                            }),
                                        SizedBox(height: 31.v),
                                        Container(
                                            decoration: AppDecoration
                                                .outlineTeal
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .circleBorder15),
                                            child: DottedBorder(
                                                color: appTheme.teal30003
                                                    .withOpacity(0.22),
                                                padding: EdgeInsets.only(
                                                    left: 1.h,
                                                    top: 1.v,
                                                    right: 1.h,
                                                    bottom: 1.v),
                                                strokeWidth: 1.h,
                                                radius: Radius.circular(16),
                                                borderType: BorderType.RRect,
                                                dashPattern: [3, 3],
                                                child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 122.h,
                                                            vertical: 32.v),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      top: 2.v),
                                                              child: Text(
                                                                  "Upload",
                                                                  style: CustomTextStyles
                                                                      .titleSmallInterTeal30003)),
                                                          CustomImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgIconsadd,
                                                              height:
                                                                  16.adaptSize,
                                                              width:
                                                                  16.adaptSize,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      top: 1.v))
                                                        ])))),
                                        SizedBox(height: 24.v),
                                        Text(
                                            "Additional Resources"
                                                .toUpperCase(),
                                            style: theme.textTheme.labelMedium),
                                        SizedBox(height: 4.v),
                                        Container(
                                            height: 2.v,
                                            width: 45.h,
                                            decoration: BoxDecoration(
                                                color: appTheme.teal30003)),
                                        SizedBox(height: 21.v),
                                        ListView.separated(
                                            physics:
                                                NeverScrollableScrollPhysics(),
                                            shrinkWrap: true,
                                            separatorBuilder: (context, index) {
                                              return Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 6.5.v),
                                                  child: SizedBox(
                                                      width: 320.h,
                                                      child: Divider(
                                                          height: 1.v,
                                                          thickness: 1.v,
                                                          color: appTheme
                                                              .teal30003
                                                              .withOpacity(
                                                                  0.3))));
                                            },
                                            itemCount: 2,
                                            itemBuilder: (context, index) {
                                              return PdfdocumentsItemWidget();
                                            })
                                      ]))),
                          Align(
                              alignment: Alignment.topCenter,
                              child: Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 131.h),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgMang0695308d8640,
                                            height: 81.adaptSize,
                                            width: 81.adaptSize,
                                            radius:
                                                BorderRadius.circular(40.h)),
                                        SizedBox(height: 7.v),
                                        Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              RichText(
                                                  text: TextSpan(children: [
                                                    TextSpan(
                                                        text: "Welcome",
                                                        style: CustomTextStyles
                                                            .bodySmallRedRoseBluegray80012),
                                                    TextSpan(
                                                        text: ",",
                                                        style: theme.textTheme
                                                            .labelLarge)
                                                  ]),
                                                  textAlign: TextAlign.left),
                                              Text("Smith",
                                                  style: CustomTextStyles
                                                      .labelLargeBluegray70001)
                                            ])
                                      ])))
                        ]))))));
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
