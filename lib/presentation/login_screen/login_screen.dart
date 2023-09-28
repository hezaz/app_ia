import 'package:flutter/material.dart';
import 'package:hedi_s_application2/core/app_export.dart';
import 'package:hedi_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:hedi_s_application2/widgets/app_bar/appbar_image_1.dart';
import 'package:hedi_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:hedi_s_application2/widgets/custom_elevated_button.dart';
import 'package:hedi_s_application2/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

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
                        EdgeInsets.only(left: 29.h, top: 19.v, bottom: 18.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                centerTitle: true,
                title: AppbarImage1(
                    svgPath: ImageConstant.imgGroup,
                    onTap: () {
                      onTapImage(context);
                    })),
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
                    child: Container(
                        width: double.maxFinite,
                        margin: EdgeInsets.only(top: 29.v),
                        padding: EdgeInsets.symmetric(
                            horizontal: 32.h, vertical: 114.v),
                        decoration: AppDecoration.fillOnPrimaryContainer
                            .copyWith(
                                borderRadius:
                                    BorderRadiusStyle.customBorderTL49),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                  padding:
                                      EdgeInsets.only(left: 8.h, top: 13.v),
                                  child: Text("Login",
                                      style: theme.textTheme.titleLarge)),
                              Container(
                                  height: 2.v,
                                  width: 43.h,
                                  margin: EdgeInsets.only(left: 8.h, top: 6.v),
                                  decoration:
                                      BoxDecoration(color: appTheme.teal30003)),
                              CustomTextFormField(
                                  controller: emailController,
                                  margin: EdgeInsets.only(left: 4.h, top: 35.v),
                                  hintText: "Email",
                                  hintStyle: CustomTextStyles.bodySmall12,
                                  textInputType: TextInputType.emailAddress),
                              CustomTextFormField(
                                  controller: passwordController,
                                  margin: EdgeInsets.only(left: 4.h, top: 19.v),
                                  hintText: "Password",
                                  hintStyle: CustomTextStyles.bodySmall12,
                                  textInputAction: TextInputAction.done,
                                  textInputType: TextInputType.visiblePassword,
                                  obscureText: true),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          top: 27.v, right: 6.h),
                                      child: Text("Forget password?",
                                          style: CustomTextStyles
                                              .bodySmallPoppins))),
                              SizedBox(height: 25.v),
                              CustomElevatedButton(
                                  text: "Login",
                                  rightIcon: Container(
                                      margin: EdgeInsets.only(),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(19.h)),
                                      child: CustomImageView(
                                          svgPath: ImageConstant
                                              .imgButtonPrimaryBackground)),
                                  onTap: () {
                                    onTapLogin(context);
                                  }),
                              SizedBox(height: 30.v),
                              Align(
                                  alignment: Alignment.center,
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 1.v),
                                            child: Text(
                                                "Don’t have an account?   ",
                                                style: CustomTextStyles
                                                    .bodySmallPoppins12)),
                                        GestureDetector(
                                            onTap: () {
                                              onTapTxtSignup(context);
                                            },
                                            child: Padding(
                                                padding:
                                                    EdgeInsets.only(left: 6.h),
                                                child: Text("Sign up",
                                                    style: CustomTextStyles
                                                        .labelLargePoppinsOnPrimary)))
                                      ])),
                              Padding(
                                  padding:
                                      EdgeInsets.only(left: 1.h, top: 58.v),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.only(
                                                top: 8.v, bottom: 5.v),
                                            child: SizedBox(
                                                width: 93.h,
                                                child: Divider(
                                                    color:
                                                        appTheme.blueGray200))),
                                        Text("Or login with",
                                            style: CustomTextStyles
                                                .bodySmallOnPrimary),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                top: 8.v, bottom: 5.v),
                                            child: SizedBox(
                                                width: 89.h,
                                                child: Divider(
                                                    color:
                                                        appTheme.blueGray200)))
                                      ])),
                              SizedBox(height: 22.v),
                              Align(
                                  alignment: Alignment.center,
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        CustomImageView(
                                            svgPath: ImageConstant.imgGoogle,
                                            height: 32.adaptSize,
                                            width: 32.adaptSize),
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgPlatformfacebook,
                                            height: 24.adaptSize,
                                            width: 24.adaptSize,
                                            margin: EdgeInsets.only(
                                                left: 25.h,
                                                top: 4.v,
                                                bottom: 4.v))
                                      ]))
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

  /// Navigates to the welcomePageContainerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the welcomePageContainerScreen.
  onTapLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.welcomePageContainerScreen);
  }

  /// Navigates to the signupScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the signupScreen.
  onTapTxtSignup(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signupScreen);
  }
}
