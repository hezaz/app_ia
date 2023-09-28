import 'package:flutter/material.dart';
import 'package:hedi_s_application2/core/app_export.dart';
import 'package:hedi_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:hedi_s_application2/widgets/app_bar/appbar_image_1.dart';
import 'package:hedi_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:hedi_s_application2/widgets/custom_checkbox_button.dart';
import 'package:hedi_s_application2/widgets/custom_drop_down.dart';
import 'package:hedi_s_application2/widgets/custom_elevated_button.dart';
import 'package:hedi_s_application2/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignupScreen extends StatelessWidget {
  SignupScreen({Key? key}) : super(key: key);

  TextEditingController fullNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  bool addstudentprofi = false;

  TextEditingController fullNameController1 = TextEditingController();

  TextEditingController emailController1 = TextEditingController();

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  TextEditingController addressController = TextEditingController();

  TextEditingController commentController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                leadingWidth: 48.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleftOnprimarycontainer,
                    margin:
                        EdgeInsets.only(left: 29.h, top: 22.v, bottom: 15.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                centerTitle: true,
                title: AppbarImage1(svgPath: ImageConstant.imgGroup)),
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment(0.5, 0),
                        end: Alignment(0.5, 1),
                        colors: [appTheme.teal30004, appTheme.teal400])),
                child: Form(
                    key: _formKey,
                    child: SingleChildScrollView(
                        padding: EdgeInsets.only(top: 19.v),
                        child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 34.h, vertical: 39.v),
                            decoration: AppDecoration.fillOnPrimaryContainer
                                .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.customBorderTL49),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 13.v),
                                  Text("Signup",
                                      style: theme.textTheme.titleLarge),
                                  SizedBox(height: 6.v),
                                  Container(
                                      height: 2.v,
                                      width: 43.h,
                                      decoration: BoxDecoration(
                                          color: appTheme.teal30003)),
                                  SizedBox(height: 23.v),
                                  CustomTextFormField(
                                      controller: fullNameController,
                                      hintText: "Full Name"),
                                  SizedBox(height: 18.v),
                                  CustomTextFormField(
                                      controller: emailController,
                                      hintText: "Email",
                                      textInputType:
                                          TextInputType.emailAddress),
                                  SizedBox(height: 18.v),
                                  CustomTextFormField(
                                      controller: passwordController,
                                      hintText: "Password         ",
                                      textInputType:
                                          TextInputType.visiblePassword,
                                      obscureText: true),
                                  SizedBox(height: 18.v),
                                  CustomTextFormField(
                                      controller: confirmpasswordController,
                                      hintText: "Confirm Password         ",
                                      textInputType:
                                          TextInputType.visiblePassword,
                                      obscureText: true),
                                  SizedBox(height: 25.v),
                                  CustomCheckboxButton(
                                      text: "Add Student profile",
                                      value: addstudentprofi,
                                      padding:
                                          EdgeInsets.symmetric(vertical: 1.v),
                                      onChange: (value) {
                                        addstudentprofi = value;
                                      }),
                                  SizedBox(height: 36.v),
                                  Text("Student profile :",
                                      style: CustomTextStyles
                                          .titleMediumRedRoseOnPrimary),
                                  SizedBox(height: 4.v),
                                  Container(
                                      height: 2.v,
                                      width: 43.h,
                                      decoration: BoxDecoration(
                                          color: appTheme.teal30003)),
                                  SizedBox(height: 20.v),
                                  CustomTextFormField(
                                      controller: fullNameController1,
                                      hintText: "Full Name"),
                                  SizedBox(height: 20.v),
                                  Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 15.h, vertical: 9.v),
                                      decoration: AppDecoration.fillTeal
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder5),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    top: 4.v, bottom: 2.v),
                                                child: Text("DOB",
                                                    style: theme
                                                        .textTheme.bodySmall)),
                                            CustomImageView(
                                                svgPath: ImageConstant
                                                    .img8725528calendaralticon,
                                                height: 15.adaptSize,
                                                width: 15.adaptSize,
                                                margin: EdgeInsets.only(
                                                    bottom: 2.v))
                                          ])),
                                  SizedBox(height: 19.v),
                                  CustomTextFormField(
                                      controller: emailController1,
                                      hintText: "Student Email",
                                      textInputType:
                                          TextInputType.emailAddress),
                                  SizedBox(height: 20.v),
                                  CustomDropDown(
                                      icon: Container(
                                          margin: EdgeInsets.fromLTRB(
                                              30.h, 9.v, 16.h, 8.v),
                                          child: CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgArrowdown)),
                                      hintText: "Select Class",
                                      items: dropdownItemList,
                                      onChanged: (value) {}),
                                  SizedBox(height: 19.v),
                                  CustomTextFormField(
                                      controller: addressController,
                                      hintText: "Mailing Address"),
                                  SizedBox(height: 21.v),
                                  CustomTextFormField(
                                      controller: commentController,
                                      hintText:
                                          "Comments section for presentation",
                                      hintStyle:
                                          CustomTextStyles.bodySmallInter,
                                      textInputAction: TextInputAction.done,
                                      maxLines: 8),
                                  SizedBox(height: 21.v),
                                  CustomImageView(
                                      svgPath: ImageConstant.img4781840addc,
                                      height: 32.adaptSize,
                                      width: 32.adaptSize,
                                      alignment: Alignment.center),
                                  SizedBox(height: 18.v),
                                  CustomElevatedButton(
                                      text: "Create account",
                                      rightIcon: Container(
                                          margin: EdgeInsets.only(),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(19.h)),
                                          child: CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgButtonPrimaryBackground)),
                                      onTap: () {
                                        onTapCreateaccount(context);
                                      }),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 49.h, top: 29.v),
                                      child: Row(children: [
                                        Text("Already have an account？ ",
                                            style:
                                                CustomTextStyles.bodySmall12),
                                        GestureDetector(
                                            onTap: () {
                                              onTapTxtLogin(context);
                                            },
                                            child: Padding(
                                                padding:
                                                    EdgeInsets.only(left: 7.h),
                                                child: Text("Log in",
                                                    style: CustomTextStyles
                                                        .labelLargeRobotoOnPrimary)))
                                      ]))
                                ])))))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the loginScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the loginScreen.
  onTapCreateaccount(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }

  /// Navigates to the loginScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the loginScreen.
  onTapTxtLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }
}
