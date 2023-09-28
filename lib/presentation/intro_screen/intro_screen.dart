import 'package:flutter/material.dart';
import 'package:hedi_s_application2/core/app_export.dart';
import 'package:hedi_s_application2/widgets/custom_elevated_button.dart';
import 'package:hedi_s_application2/widgets/custom_outlined_button.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 47.h,
            vertical: 58.v,
          ),
          child: Column(
            children: [
              SizedBox(height: 4.v),
              CustomImageView(
                svgPath: ImageConstant.imgGroupBlueGray700,
                height: 26.v,
                width: 179.h,
              ),
              SizedBox(height: 118.v),
              CustomImageView(
                svgPath: ImageConstant.imgGroup117,
                height: 127.adaptSize,
                width: 127.adaptSize,
              ),
              Spacer(),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 227.h,
                  margin: EdgeInsets.only(
                    left: 14.h,
                    right: 23.h,
                  ),
                  child: Text(
                    "Discover \nour Coding \nPrograms".toUpperCase(),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.displaySmall!.copyWith(
                      height: 1.14,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 1.h,
                  top: 114.v,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 56.v,
                      width: 135.h,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 37.h),
                              child: Text(
                                "Sign up",
                                style: theme.textTheme.titleMedium,
                              ),
                            ),
                          ),
                          CustomOutlinedButton(
                            width: 135.h,
                            text: "Sign up",
                            alignment: Alignment.center,
                          ),
                        ],
                      ),
                    ),
                    CustomElevatedButton(
                      height: 56.v,
                      width: 114.h,
                      text: "Login",
                      buttonStyle: CustomButtonStyles.fillBlueGray,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
