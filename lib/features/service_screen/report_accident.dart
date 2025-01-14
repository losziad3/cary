import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../components/default_button.dart';
import '../../core/utils/assets.dart';

class ReportAccident extends StatelessWidget {
  const ReportAccident({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 18.0,top: 25),
          child: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {
            },
          ),
        ),
        title: const Padding(
          padding: EdgeInsets.only(top: 35.0),
          child: Text(
            'Report Accident',
            style: TextStyle(color: Colors.black),
          ),
        ),
        centerTitle: true,
        toolbarHeight: 80,
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
              defaultButton(
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
