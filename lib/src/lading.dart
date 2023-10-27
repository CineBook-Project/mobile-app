import 'package:canal_olympia/generated/l10n.dart';
import 'package:canal_olympia/src/core/utils/app_decoration.dart';
import 'package:canal_olympia/src/core/utils/colors.dart';
import 'package:canal_olympia/src/core/utils/image_constant.dart';
import 'package:canal_olympia/src/core/utils/size_utils.dart';
import 'package:canal_olympia/src/core/utils/tools.dart';
import 'package:canal_olympia/src/modules/app/themes.dart';
import 'package:canal_olympia/src/modules/auth/bloc/auth/auth_bloc.dart';
import 'package:canal_olympia/src/widgets/custom_button_style.dart';
import 'package:canal_olympia/src/widgets/custom_elevated_button.dart';
import 'package:canal_olympia/src/widgets/custom_image_view.dart';
import 'package:canal_olympia/src/widgets/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LadingPage extends StatelessWidget {
  const LadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    changeStatusColor(accentDarkColor);
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: accentDarkColor,
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    child: SizedBox(
                        height: 768.v,
                        width: double.maxFinite,
                        child: Stack(alignment: Alignment.center, children: [
                          Align(
                              alignment: Alignment.center,
                              child: SizedBox(
                                  height: 768.v,
                                  width: double.maxFinite,
                                  child: Stack(
                                      alignment: Alignment.topLeft,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgRectangle127,
                                            height: 146.v,
                                            width: 89.h,
                                            radius: BorderRadius.circular(4.h),
                                            alignment: Alignment.topLeft),
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgRectangle129,
                                            height: 238.v,
                                            width: 66.h,
                                            radius: BorderRadius.circular(4.h),
                                            alignment: Alignment.topLeft,
                                            margin:
                                                EdgeInsets.only(top: 147.v)),
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgRectangle130,
                                            height: 238.v,
                                            width: 187.h,
                                            radius: BorderRadius.circular(4.h),
                                            alignment: Alignment.topLeft,
                                            margin: EdgeInsets.only(top: 76.v)),
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgRectangle138,
                                            height: 238.v,
                                            width: 43.h,
                                            radius: BorderRadius.circular(4.h),
                                            alignment: Alignment.bottomLeft,
                                            margin:
                                                EdgeInsets.only(bottom: 142.v)),
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgRectangle139,
                                            height: 238.v,
                                            width: 165.h,
                                            radius: BorderRadius.circular(4.h),
                                            alignment: Alignment.bottomLeft,
                                            margin:
                                                EdgeInsets.only(bottom: 214.v)),
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgRectangle131,
                                            height: 238.v,
                                            width: 219.h,
                                            radius: BorderRadius.circular(4.h),
                                            alignment: Alignment.topLeft,
                                            margin: EdgeInsets.only(
                                                left: 67.h, top: 244.v)),
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgRectangle132,
                                            height: 238.v,
                                            width: 142.h,
                                            radius: BorderRadius.circular(4.h),
                                            alignment: Alignment.bottomLeft),
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgRectangle133,
                                            height: 238.v,
                                            width: 219.h,
                                            radius: BorderRadius.circular(4.h),
                                            alignment: Alignment.bottomLeft,
                                            margin: EdgeInsets.only(
                                                left: 45.h, bottom: 46.v)),
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgRectangle134,
                                            height: 238.v,
                                            width: 208.h,
                                            radius: BorderRadius.circular(4.h),
                                            alignment: Alignment.bottomRight,
                                            margin:
                                                EdgeInsets.only(bottom: 117.v)),
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgRectangle135,
                                            height: 238.v,
                                            width: 219.h,
                                            radius: BorderRadius.circular(4.h),
                                            alignment: Alignment.bottomLeft,
                                            margin:
                                                EdgeInsets.only(left: 22.h)),
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgRectangle136,
                                            height: 238.v,
                                            width: 219.h,
                                            radius: BorderRadius.circular(4.h),
                                            alignment: Alignment.bottomRight,
                                            margin:
                                                EdgeInsets.only(right: 12.h)),
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgRectangle137,
                                            height: 238.v,
                                            width: 109.h,
                                            radius: BorderRadius.circular(4.h),
                                            alignment: Alignment.bottomRight)
                                      ]))),
                          Align(
                              alignment: Alignment.center,
                              child: SizedBox(
                                  height: 745.v,
                                  width: double.maxFinite,
                                  child: Stack(
                                      alignment: Alignment.topRight,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgRectangle125,
                                            height: 73.v,
                                            width: 209.h,
                                            radius: BorderRadius.circular(4.h),
                                            alignment: Alignment.topLeft),
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgRectangle126,
                                            height: 1.v,
                                            width: 219.h,
                                            radius: BorderRadius.circular(4.h),
                                            alignment: Alignment.topRight,
                                            margin:
                                                EdgeInsets.only(right: 44.h)),
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgRectangle128,
                                            height: 238.v,
                                            width: 219.h,
                                            radius: BorderRadius.circular(4.h),
                                            alignment: Alignment.topRight,
                                            margin: EdgeInsets.only(
                                                top: 3.v, right: 67.h)),
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgRectangle129169x164,
                                            height: 169.v,
                                            width: 164.h,
                                            radius: BorderRadius.circular(4.h),
                                            alignment: Alignment.topRight),
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgRectangle13098x43,
                                            height: 98.v,
                                            width: 43.h,
                                            radius: BorderRadius.circular(4.h),
                                            alignment: Alignment.topRight),
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgRectangle138238x187,
                                            height: 238.v,
                                            width: 187.h,
                                            radius: BorderRadius.circular(4.h),
                                            alignment: Alignment.topRight,
                                            margin:
                                                EdgeInsets.only(top: 171.v)),
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgRectangle139238x65,
                                            height: 238.v,
                                            width: 65.h,
                                            radius: BorderRadius.circular(4.h),
                                            alignment: Alignment.topRight,
                                            margin: EdgeInsets.only(top: 99.v)),
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgRectangle132238x88,
                                            height: 238.v,
                                            width: 88.h,
                                            radius: BorderRadius.circular(4.h),
                                            alignment: Alignment.bottomRight,
                                            margin:
                                                EdgeInsets.only(bottom: 168.v))
                                      ]))),
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                  decoration: AppDecoration
                                      .gradientOnErrorContainerToOnPrimaryContainer,
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        CustomElevatedButton(
                                            height: 50.v,
                                            text: S.of(context).begin,
                                            margin: EdgeInsets.only(
                                                left: 44.h,
                                                top: 312.v,
                                                right: 44.h),
                                            buttonStyle:
                                                CustomButtonStyles.none,
                                            decoration: CustomButtonStyles
                                                .gradientErrorContainerToPrimaryDecoration,
                                            buttonTextStyle:
                                                CustomTextStyles.titleMedium_1,
                                            onTap: () {
                                              context
                                                  .read<AuthBloc>()
                                                  .add(AuthFirst());
                                            }),
                                        SizedBox(height: 132.v),
                                        Container(
                                            height: 33.v,
                                            width: double.maxFinite,
                                            decoration: BoxDecoration(
                                                color: theme.colorScheme
                                                    .onPrimaryContainer))
                                      ])))
                        ]))))));
  }
}
