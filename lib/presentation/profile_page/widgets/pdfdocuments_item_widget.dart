import 'package:flutter/material.dart';
import 'package:hedi_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class PdfdocumentsItemWidget extends StatelessWidget {
  const PdfdocumentsItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          svgPath: ImageConstant.img7267716extpdf,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
        Padding(
          padding: EdgeInsets.only(left: 12.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "PDF Documents",
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
          margin: EdgeInsets.only(bottom: 6.v),
        ),
      ],
    );
  }
}
