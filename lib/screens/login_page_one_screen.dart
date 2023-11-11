import 'package:flutter/material.dart';
import 'package:rescue/core/app_export.dart';
import 'package:rescue/screens/login_page_two_screen.dart';
import 'package:rescue/widgets/app_bar/appbar_leading_image.dart';
import 'package:rescue/widgets/app_bar/custom_app_bar.dart';
import 'package:rescue/widgets/custom_elevated_button.dart';
import 'package:rescue/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginPageOneScreen extends StatelessWidget {
  LoginPageOneScreen({Key? key}) : super(key: key);

  TextEditingController editText1Controller = TextEditingController();

  TextEditingController editText2Controller = TextEditingController();

  TextEditingController editText3Controller = TextEditingController();

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
                      _buildTwentySix(context),
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 22.h, vertical: 29.v),
                          child: Column(children: [
                            SizedBox(height: 26.v),
                            CustomImageView(
                                imagePath: ImageConstant.imgMaskGroup,
                                height: 128.v,
                                width: 132.h),
                            SizedBox(height: 28.v),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(left: 10.h),
                                    child: Text("District",
                                        style: theme.textTheme.titleLarge))),
                            SizedBox(height: 7.v),
                            _buildEditText1(context),
                            SizedBox(height: 19.v),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(left: 10.h),
                                    child: Text("Thaluk",
                                        style: theme.textTheme.titleLarge))),
                            SizedBox(height: 7.v),
                            _buildEditText2(context),
                            SizedBox(height: 19.v),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(left: 10.h),
                                    child: Text("Email",
                                        style: theme.textTheme.titleLarge))),
                            SizedBox(height: 7.v),
                            _buildEditText3(context),
                            SizedBox(height: 19.v),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(left: 10.h),
                                    child: Text("Gender ",
                                        style: theme.textTheme.titleLarge))),
                            SizedBox(height: 7.v),
                            Container(
                                height: 57.v,
                                width: 316.h,
                                decoration: BoxDecoration(
                                    color: theme.colorScheme.primaryContainer,
                                    borderRadius: BorderRadius.circular(28.h),
                                    border: Border.all(
                                        color: appTheme.black900, width: 1.h)))
                          ]))
                    ]))),
            bottomNavigationBar: _buildNext(context)));
  }

  /// Section Widget
  Widget _buildTwentySix(BuildContext context) {
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
  Widget _buildEditText1(BuildContext context) {
    return CustomTextFormField(controller: editText1Controller);
  }

  /// Section Widget
  Widget _buildEditText2(BuildContext context) {
    return CustomTextFormField(controller: editText2Controller);
  }

  /// Section Widget
  Widget _buildEditText3(BuildContext context) {
    return CustomTextFormField(
        controller: editText3Controller, textInputAction: TextInputAction.done);
  }

  /// Section Widget
  Widget _buildNext(BuildContext context) {
    return CustomElevatedButton(
      text: "NEXT",
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: ((context) => LoginPageTwoScreen())));
      },
    );
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
