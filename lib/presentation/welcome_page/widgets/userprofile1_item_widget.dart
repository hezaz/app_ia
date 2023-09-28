import 'package:flutter/material.dart';
import 'package:hedi_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile1ItemWidget extends StatelessWidget {
  Userprofile1ItemWidget({
    Key? key,
    this.onTapUserprofile,
  }) : super(
          key: key,
        );

  VoidCallback? onTapUserprofile;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 73.h,
      child: GestureDetector(
        onTap: () {
          onTapUserprofile?.call();
        },
        child: Container(
          padding: EdgeInsets.all(4.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadiusStyle.roundedBorder12,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 66.v,
                width: 63.h,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.img1kfakbnusqst00bmjaxciag66x63,
                      height: 66.v,
                      width: 63.h,
                      radius: BorderRadius.circular(
                        12.h,
                      ),
                      alignment: Alignment.center,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgScreenshot101,
                      height: 66.v,
                      width: 63.h,
                      radius: BorderRadius.circular(
                        12.h,
                      ),
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 7.v),
              Text(
                "Unity",
                style: theme.textTheme.labelSmall,
              ),
              SizedBox(height: 2.v),
              Text(
                "Programming",
                style: CustomTextStyles.robotoGray500,
              ),
              SizedBox(height: 4.v),
            ],
          ),
        ),
      ),
    );
  }
}
