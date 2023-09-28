import 'package:flutter/material.dart';
import 'package:hedi_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile3ItemWidget extends StatelessWidget {
  Userprofile3ItemWidget({
    Key? key,
    this.onTapUserprofile,
  }) : super(
          key: key,
        );

  VoidCallback? onTapUserprofile;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
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
              CustomImageView(
                imagePath: ImageConstant.img1kfakbnusqst00bmjaxciag2,
                height: 66.v,
                width: 63.h,
                radius: BorderRadius.circular(
                  12.h,
                ),
              ),
              SizedBox(height: 7.v),
              Text(
                "SCRATCH",
                style: theme.textTheme.labelSmall,
              ),
              SizedBox(height: 2.v),
              Text(
                "Programming",
                style: CustomTextStyles.robotoGray500,
              ),
              SizedBox(height: 3.v),
            ],
          ),
        ),
      ),
    );
  }
}
