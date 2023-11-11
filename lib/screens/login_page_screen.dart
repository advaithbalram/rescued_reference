import 'package:flutter/material.dart';
import 'package:rescue/core/app_export.dart';
import 'package:rescue/screens/login_page_three_screen.dart';
import 'package:rescue/widgets/custom_elevated_button.dart';

class LoginPageScreen extends StatelessWidget {
  const LoginPageScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(
                height: 530.v,
                width: 359.h,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgImage11,
                      height: 289.v,
                      width: 312.h,
                      alignment: Alignment.bottomLeft,
                      margin: EdgeInsets.only(left: 11.h),
                    ),
                    _buildWelcomeScreen(context),
                  ],
                ),
              ),
              SizedBox(height: 61.v),
              CustomElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => LoginPageThreeScreen())));
                },
                height: 48.v,
                width: 213.h,
                text: "DONOR".toUpperCase(),
                buttonStyle: CustomButtonStyles.outlineBlack,
                buttonTextStyle: CustomTextStyles.displaySmallRoboto,
              ),
              SizedBox(height: 61.v),
              CustomElevatedButton(
                height: 48.v,
                width: 213.h,
                text: "RECIEVER".toUpperCase(),
                buttonStyle: CustomButtonStyles.outlineBlack,
                buttonTextStyle: CustomTextStyles.displaySmallRoboto,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildWelcomeScreen(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: SizedBox(
        height: 293.v,
        width: 359.h,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgImage3,
              height: 293.v,
              width: 359.h,
              alignment: Alignment.center,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 78.h,
                  right: 87.h,
                  bottom: 73.v,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "WELCOME",
                      style: theme.textTheme.displaySmall,
                    ),
                    SizedBox(height: 8.v),
                    Text(
                      "TO",
                      style: theme.textTheme.displaySmall,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
