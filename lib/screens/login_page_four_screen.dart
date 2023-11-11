import 'package:flutter/material.dart';
import 'package:rescue/core/app_export.dart';
import 'package:rescue/screens/login_page_one_screen.dart';
import 'package:rescue/widgets/app_bar/appbar_leading_image.dart';
import 'package:rescue/widgets/app_bar/custom_app_bar.dart';
import 'package:rescue/widgets/custom_elevated_button.dart';
import 'package:rescue/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginPageFourScreen extends StatelessWidget {
  LoginPageFourScreen({Key? key}) : super(key: key);

  TextEditingController userNameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController mobileNumberController = TextEditingController();

  TextEditingController dateOfBirthController = TextEditingController();

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
                      _buildThirtySeven(context),
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
                                    child: Text("Username",
                                        style: theme.textTheme.titleLarge))),
                            SizedBox(height: 7.v),
                            _buildUserName(context),
                            SizedBox(height: 19.v),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(left: 10.h),
                                    child: Text("Password",
                                        style: theme.textTheme.titleLarge))),
                            SizedBox(height: 7.v),
                            _buildPassword(context),
                            SizedBox(height: 19.v),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(left: 10.h),
                                    child: Text("Mobile Number",
                                        style: theme.textTheme.titleLarge))),
                            SizedBox(height: 7.v),
                            _buildMobileNumber(context),
                            SizedBox(height: 19.v),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(left: 10.h),
                                    child: Text("Date of Birth",
                                        style: theme.textTheme.titleLarge))),
                            SizedBox(height: 7.v),
                            _buildDateOfBirth(context)
                          ]))
                    ]))),
            bottomNavigationBar: _buildNext(context)));
  }

  /// Section Widget
  Widget _buildThirtySeven(BuildContext context) {
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
  Widget _buildUserName(BuildContext context) {
    return CustomTextFormField(controller: userNameController);
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return CustomTextFormField(
        controller: passwordController, obscureText: true);
  }

  /// Section Widget
  Widget _buildMobileNumber(BuildContext context) {
    return CustomTextFormField(controller: mobileNumberController);
  }

  /// Section Widget
  Widget _buildDateOfBirth(BuildContext context) {
    return CustomTextFormField(
        controller: dateOfBirthController,
        textInputAction: TextInputAction.done);
  }

  /// Section Widget
  Widget _buildNext(BuildContext context) {
    return CustomElevatedButton(
      text: "NEXT",
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: ((context) => LoginPageOneScreen())));
      },
    );
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
