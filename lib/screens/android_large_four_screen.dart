import 'package:flutter/material.dart';
import 'package:rescue/core/app_export.dart';
import 'package:rescue/widgets/app_bar/appbar_leading_image.dart';
import 'package:rescue/widgets/app_bar/appbar_title.dart';
import 'package:rescue/widgets/app_bar/appbar_trailing_image.dart';
import 'package:rescue/widgets/app_bar/custom_app_bar.dart';
import 'package:rescue/widgets/custom_elevated_button.dart';

class AndroidLargeFourScreen extends StatelessWidget {
  const AndroidLargeFourScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                height: 744.v,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.centerLeft, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgImage9,
                      height: 744.v,
                      width: 360.h,
                      alignment: Alignment.center),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.fromLTRB(45.h, 33.v, 95.h, 33.v),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgMaskGroup128x132,
                                    height: 128.v,
                                    width: 132.h,
                                    margin: EdgeInsets.only(right: 21.h)),
                                SizedBox(height: 39.v),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: SizedBox(
                                        width: 133.h,
                                        child: Text(
                                            "USERNAME:\n\nMOBILE NUMBER:\n\nDATE OF BIRTH:\n\nBLOOD GROUP:\n\nHEALTH HISTORY:\n\nHEIGHT:\nWEIGHT:\n\nDISTRICT:\n\nTHALUK:\n\nEMAIL:\n\nGENDER:"
                                                .toUpperCase(),
                                            maxLines: 21,
                                            overflow: TextOverflow.ellipsis,
                                            style: CustomTextStyles
                                                .titleSmallBlack900
                                                .copyWith(height: 1.14)))),
                                Spacer(),
                                CustomElevatedButton(
                                    height: 48.v,
                                    text: "UPDATE DETAILS".toUpperCase(),
                                    margin: EdgeInsets.only(left: 29.h),
                                    leftIcon: Container(
                                        margin: EdgeInsets.only(right: 8.h),
                                        child: CustomImageView(
                                            imagePath: ImageConstant.imgSearch,
                                            height: 16.v,
                                            width: 18.h)),
                                    buttonStyle:
                                        CustomButtonStyles.outlineBlackTL24,
                                    buttonTextStyle:
                                        CustomTextStyles.titleSmallOnPrimary)
                              ])))
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 56.v,
        leadingWidth: 37.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftOnprimary,
            margin: EdgeInsets.only(left: 13.h, top: 16.v, bottom: 16.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title:
            AppbarTitle(text: "Profile", margin: EdgeInsets.only(left: 33.h)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgNotification,
              margin: EdgeInsets.only(left: 18.h, top: 16.v, right: 16.h)),
          AppbarTrailingImage(
              imagePath: ImageConstant.imgShare,
              margin: EdgeInsets.only(left: 24.h, top: 16.v, right: 16.h)),
          AppbarTrailingImage(
              imagePath: ImageConstant.imgSearchOnprimary,
              margin: EdgeInsets.only(left: 24.h, top: 16.v, right: 34.h))
        ],
        styleType: Style.bgFill);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
