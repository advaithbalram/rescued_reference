import 'package:flutter/material.dart';
import 'package:rescue/core/app_export.dart';
import 'package:rescue/widgets/app_bar/appbar_leading_image.dart';
import 'package:rescue/widgets/app_bar/appbar_title.dart';
import 'package:rescue/widgets/app_bar/appbar_trailing_image.dart';
import 'package:rescue/widgets/app_bar/custom_app_bar.dart';

class AndroidLargeOneScreen extends StatelessWidget {
  const AndroidLargeOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          height: 744.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: 744.v,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgImage9,
                        height: 744.v,
                        width: 360.h,
                        alignment: Alignment.center,
                      ),
                      _buildImageTopA(context),
                    ],
                  ),
                ),
              ),
              _buildSeventeen(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 56.v,
      leadingWidth: 37.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgMenu,
        margin: EdgeInsets.only(
          left: 13.h,
          top: 16.v,
          bottom: 16.v,
        ),
      ),
      title: AppbarTitle(
        text: "Profile",
        margin: EdgeInsets.only(left: 33.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgNotification,
          margin: EdgeInsets.only(
            left: 18.h,
            top: 16.v,
            right: 16.h,
          ),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgShare,
          margin: EdgeInsets.only(
            left: 24.h,
            top: 16.v,
            right: 16.h,
          ),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgSearchOnprimary,
          margin: EdgeInsets.only(
            left: 24.h,
            top: 16.v,
            right: 34.h,
          ),
        ),
      ],
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildImageTopA(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        margin: EdgeInsets.only(
          left: 8.h,
          top: 106.v,
          right: 8.h,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 8.h,
          vertical: 13.v,
        ),
        decoration: AppDecoration.outlineBlack9001.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder4,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 61.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgWarning,
                    height: 36.v,
                    width: 39.h,
                    margin: EdgeInsets.only(bottom: 131.v),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 25.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "NOTICE!!!",
                            style: CustomTextStyles.titleLargeRobotoBlack900,
                          ),
                          SizedBox(height: 3.v),
                          SizedBox(
                            width: 202.h,
                            child: Text(
                              "BLOOD GROUP:O+\nPATIENT NAME:JOHN DOE\nDATE:5-11-2023\nHOSPITAL:SUNRISE HOSPITAL,KOCHI\nCONTACT NUMBER:999999999\nNO OF UNITS:3",
                              maxLines: 7,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.bodyMedium!.copyWith(
                                height: 1.43,
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
            SizedBox(height: 68.v),
            Padding(
              padding: EdgeInsets.only(left: 6.h),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 3.v),
                    child: Text(
                      "ACCEPT".toUpperCase(),
                      style: CustomTextStyles.titleSmallGreenA700,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 14.h,
                      top: 3.v,
                      bottom: 3.v,
                    ),
                    child: Text(
                      "REJECT".toUpperCase(),
                      style: CustomTextStyles.titleSmallErrorContainer,
                    ),
                  ),
                  Spacer(),
                  CustomImageView(
                    imagePath: ImageConstant.imgNotificationBlack900,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSeventeen(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        margin: EdgeInsets.only(
          right: 7.h,
          bottom: 696.v,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 2.h,
          vertical: 15.v,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 14.h),
              child: Text(
                "ALERTS".toUpperCase(),
                textAlign: TextAlign.center,
                style: theme.textTheme.titleSmall,
              ),
            ),
            Spacer(
              flex: 65,
            ),
            Text(
              "UPDATE".toUpperCase(),
              style: theme.textTheme.titleSmall,
            ),
            Spacer(
              flex: 34,
            ),
            Text(
              "COmmunity".toUpperCase(),
              style: theme.textTheme.titleSmall,
            ),
          ],
        ),
      ),
    );
  }
}
