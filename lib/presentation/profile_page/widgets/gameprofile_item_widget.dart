import 'package:flutter/material.dart';
import 'package:hedi_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class GameprofileItemWidget extends StatelessWidget {
  const GameprofileItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 30.adaptSize,
          width: 30.adaptSize,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgAbstractbackgro30x30,
                height: 30.adaptSize,
                width: 30.adaptSize,
                radius: BorderRadius.circular(
                  15.h,
                ),
                alignment: Alignment.center,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgScreenshot10230x30,
                height: 30.adaptSize,
                width: 30.adaptSize,
                radius: BorderRadius.circular(
                  15.h,
                ),
                alignment: Alignment.center,
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 9.h,
            top: 6.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Unity Game Development",
                style: theme.textTheme.labelSmall,
              ),
              SizedBox(height: 4.v),
              Text(
                "Uploaded On: 8:00 AM December 01, 2022",
                style: CustomTextStyles.robotoGray500,
              ),
            ],
          ),
        ),
        Spacer(),
        CustomImageView(
          svgPath: ImageConstant.imgComputerTeal30003,
          height: 15.v,
          width: 52.h,
          margin: EdgeInsets.symmetric(vertical: 7.v),
        ),
      ],
    );
  }
}
