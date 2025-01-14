import 'package:cary/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


Widget defaultButtonWithIcon({
  double width = double.infinity,
  double? textSize,
  double? height,
  Color? textColor,
  bool isUpper = true,
  required VoidCallback onTap,
  required String text,
  IconData? icon,
}) =>
    Container(
      decoration: BoxDecoration(
          color: AppColors.darkBlue, borderRadius: BorderRadius.circular(8.r)),
      width: width,
      height: height,
      child: MaterialButton(
        onPressed: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon,color: Colors.white,),
            SizedBox(width: 5.w,),
            Center(
              child: Text(
                isUpper ? text.toUpperCase() : text,
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: textSize,
                  fontWeight: FontWeight.bold,

                ),
              ),
            ),
          ],
        ),

      ),
    );
