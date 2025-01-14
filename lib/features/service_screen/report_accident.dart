import 'package:cary/components/default_button_with_icon.dart';
import 'package:cary/core/utils/routes.dart';
import 'package:cary/features/main_screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../core/utils/assets.dart';

class ReportAccident extends StatelessWidget {
  const ReportAccident({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: (){
              context.pop();
            },
            child: Icon(Icons.arrow_back_ios_new_outlined)),
        title: const Padding(
          padding: EdgeInsets.only(top: 10.0),
          child: Text(
            'Report Accident',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
      body:  Column(

        children: [
          SizedBox(height: 45.h,),
          const Text(
              'When an accident occurs, you can contact the ambulance',
              style: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w500)
          ),
          const Text(
            ' and get through quickly and easily',
            style: TextStyle(
                color: Colors.black38,
                fontWeight: FontWeight.w500),),
          SizedBox(height: 20.h),
          Image.asset(
            AppAssets.reportAccidentVector,
            height: 260.h,
            width: 350.w,
          ),
          SizedBox(height: 100.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              defaultButtonWithIcon(
                width: 320.w,
                onTap: () {},
                text: 'Call 128',
                icon: Icons.phone,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
