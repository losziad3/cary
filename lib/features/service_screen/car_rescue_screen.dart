import 'package:cary/components/default_button.dart';
import 'package:cary/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../core/utils/colors.dart';

class CarRescue extends StatelessWidget {
  const CarRescue({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: (){
              context.pop();
            },
            child: Icon(Icons.arrow_back_ios_new_outlined)),
        title: const Padding(
          padding: EdgeInsets.only(top: 10.0),
          child: Text(
            'Car Rescue',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
      body: Padding(
        padding:  EdgeInsets.all(20.sp),
        child: Column(
          children: [
            Image.asset(
                AppAssets.caRescueVector,
              height: 260.h,
              width: 350.w,
            ),
            Row(
              children: [
                Icon(Icons.check_box_outline_blank,size: 16.w,),
                 Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Minor breakdown service',
                      style: TextStyle(
                          color: AppColors.darkBlue,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500),
                    ),
                ),
              ],
            ),
            SizedBox(height: 10.h,),
            Row(
              children: [
                Icon(Icons.check_box_outline_blank,size: 16.w,),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Car rescue service',
                    style: TextStyle(
                        color: AppColors.darkBlue,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h,),
            defaultButton(
               width: 185.w,
                onTap: (){},
                text: 'Next',

            ),

          ],
        ),
      ),
    );
  }
}
