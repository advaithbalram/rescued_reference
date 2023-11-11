import 'package:flutter/material.dart';
import 'package:rescue/core/app_export.dart';
import 'package:rescue/screens/android_large_one_screen.dart';
import 'package:rescue/widgets/app_bar/appbar_leading_image.dart';
import 'package:rescue/widgets/app_bar/custom_app_bar.dart';
import 'package:rescue/widgets/custom_elevated_button.dart';
import 'package:rescue/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginPageTwoScreen extends StatelessWidget {
  LoginPageTwoScreen({Key? key}) : super(key: key);

  TextEditingController editTextOneController = TextEditingController();

  TextEditingController editTextTwoController = TextEditingController();

  TextEditingController editTextThreeController = TextEditingController();

  TextEditingController editTextFourController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                decoration: BoxDecoration(
                    color: theme.colorScheme.onPrimary,
                    boxShadow: [
                      BoxShadow(
                          color: appTheme.black900.withOpacity(0.25),
                          spreadRadius: 2.h,
                          blurRadius: 2.h,
                          offset: Offset(0, 4))
                    ],
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgGroup38),
                        fit: BoxFit.cover)),
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      SizedBox(height: 12.v),
                      _buildThirty(context),
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 22.h, vertical: 29.v),
                          child: Column(children: [
                            SizedBox(height: 26.v),
                            SizedBox(
                                height: 128.v,
                                width: 132.h,
                                child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgMaskGroup,
                                          height: 128.v,
                                          width: 132.h,
                                          alignment: Alignment.center),
                                      CustomImageView(
                                          imagePath: ImageConstant.imgMaskGroup,
                                          height: 128.v,
                                          width: 132.h,
                                          alignment: Alignment.center)
                                    ])),
                            SizedBox(height: 30.v),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(left: 10.h),
                                    child: Text("Blood Group",
                                        style: theme.textTheme.titleLarge))),
                            SizedBox(height: 5.v),
                            _buildEditTextOne(context),
                            SizedBox(height: 21.v),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(left: 10.h),
                                    child: Text("Donation History",
                                        style: theme.textTheme.titleLarge))),
                            SizedBox(height: 5.v),
                            _buildEditTextTwo(context),
                            SizedBox(height: 21.v),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(left: 10.h),
                                    child: Text("Height",
                                        style: theme.textTheme.titleLarge))),
                            SizedBox(height: 5.v),
                            _buildEditTextThree(context),
                            SizedBox(height: 21.v),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(left: 10.h),
                                    child: Text("Weight",
                                        style: theme.textTheme.titleLarge))),
                            SizedBox(height: 5.v),
                            _buildEditTextFour(context)
                          ]))
                    ]))),
            bottomNavigationBar: _buildFinish(context)));
  }

  /// Section Widget
  Widget _buildThirty(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(right: 62.h),
            child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              CustomAppBar(
                  leadingWidth: double.maxFinite,
                  leading: AppbarLeadingImage(
                      imagePath: ImageConstant.imgArrowLeft,
                      margin: EdgeInsets.only(right: 323.h),
                      onTap: () {
                        onTapArrowLeft(context);
                      })),
              Padding(
                  padding: EdgeInsets.only(top: 36.v),
                  child: Text("Create Profile",
                      style: theme.textTheme.headlineLarge))
            ])));
  }

  /// Section Widget
  Widget _buildEditTextOne(BuildContext context) {
    return CustomTextFormField(controller: editTextOneController);
  }

  /// Section Widget
  Widget _buildEditTextTwo(BuildContext context) {
    return CustomTextFormField(controller: editTextTwoController);
  }

  /// Section Widget
  Widget _buildEditTextThree(BuildContext context) {
    return CustomTextFormField(controller: editTextThreeController);
  }

  /// Section Widget
  Widget _buildEditTextFour(BuildContext context) {
    return CustomTextFormField(
        controller: editTextFourController,
        textInputAction: TextInputAction.done);
  }

  /// Section Widget
  Widget _buildFinish(BuildContext context) {
    return CustomElevatedButton(
      text: "FINISH",
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: ((context) => AndroidLargeOneScreen())));
      },
    );
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
