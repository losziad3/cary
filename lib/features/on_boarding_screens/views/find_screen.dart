import 'package:cary/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/colors.dart';

class FindScreen extends StatelessWidget {
  const FindScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                AppAssets.onBoardingBackGround,
              ),
              fit: BoxFit.fill),
        ),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(24.0),
              child: Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    "Skip",
                    style: TextStyle(color: AppColors.darkBlue),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        AppAssets.tire,
                        height: 50.h,
                        width: 70.w,
                      ),
                      SizedBox(
                        width: 16.w,
                      ),
                      Image.asset(
                        AppAssets.steeringWheel,
                        height: 52.h,
                        width: 54.w,
                      ),
                      SizedBox(
                        width: 18.w,
                      ),
                      Image.asset(
                        AppAssets.muffler,
                        height: 45.h,
                        width: 80.w,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 14.h,
                  ),
                  Image.asset(
                    AppAssets.car,
                    height: 88.h,
                    width: 202.w,
                  ),
                  SizedBox(
                    height: 14.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        AppAssets.speakers,
                        height: 44.h,
                        width: 78.w,
                      ),
                      SizedBox(
                        width: 18.w,
                      ),
                      Image.asset(
                        AppAssets.radio,
                        height: 26.h,
                        width: 81.w,
                      ),
                      SizedBox(
                        width: 18.w,
                      ),
                      Image.asset(
                        AppAssets.battery,
                        height: 38.h,
                        width: 58.w,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  Text(
                    "Find",
                    style: TextStyle(
                        fontSize: 32,
                        color: AppColors.darkBlue,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                      "Find spare parts for your car with ease, with the ability to deliver them to the location of your choice",
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: AppColors.darkBlue,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center),
                  SizedBox(
                    height: 40.h,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 46, vertical: 13),
                    decoration: BoxDecoration(
                        color: AppColors.darkBlue,
                        borderRadius: BorderRadius.circular(15.r)),
                    child: Text("Next",style: TextStyle(color: AppColors.white),),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
