import 'package:flutter/material.dart';
import 'package:hedi_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile2ItemWidget extends StatelessWidget {
  const Userprofile2ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.outlineBlueGrayF.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 126.v,
            width: 121.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.img1kfakbnusqst00bmjaxciag126x121,
                  height: 126.v,
                  width: 121.h,
                  radius: BorderRadius.circular(
                    12.h,
                  ),
                  alignment: Alignment.center,
                ),
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    height: 126.v,
                    width: 121.h,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgScreenshot101126x121,
                          height: 126.v,
                          width: 121.h,
                          radius: BorderRadius.circular(
                            12.h,
                          ),
                          alignment: Alignment.center,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                            height: 126.v,
                            width: 121.h,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgDownload1,
                                  height: 126.v,
                                  width: 121.h,
                                  radius: BorderRadius.circular(
                                    12.h,
                                  ),
                                  alignment: Alignment.center,
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.img69bc924b00204,
                                  height: 126.v,
                                  width: 121.h,
                                  radius: BorderRadius.circular(
                                    12.h,
                                  ),
                                  alignment: Alignment.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20.h,
              top: 14.v,
              bottom: 22.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "La Piscine",
                  style: theme.textTheme.labelLarge,
                ),
                SizedBox(height: 5.v),
                Text(
                  "Exam Preparation",
                  style: CustomTextStyles.bodySmallBluegray800,
                ),
                SizedBox(height: 11.v),
                Text(
                  "Lorem ipsum dolor sit amet consectetur. Orci ultrices nibh tristique metus nulla pellentesque tortor et elit.",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.robotoBluegray400.copyWith(
                    height: 1.50,
                  ),
                ),
                SizedBox(height: 12.v),
                Row(
                  children: [
                    Text(
                      "Explore",
                      style: CustomTextStyles.robotoBluegray800.copyWith(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.img8111422leftlin,
                      height: 6.adaptSize,
                      width: 6.adaptSize,
                      margin: EdgeInsets.only(
                        left: 1.h,
                        bottom: 1.v,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
