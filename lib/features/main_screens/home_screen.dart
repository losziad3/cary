import 'package:cary/core/utils/assets.dart';
import 'package:cary/data/models/home_model.dart';
import 'package:cary/features/main_screens/home_widgets/carousal_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'home_widgets/car_part_widget.dart';
import 'home_widgets/service_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.only(top: 32.h,left: 10.w,right: 10.w),
          child: Column(
            children: [
              Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset(AppAssets.logo,
                              height:50.h,
                              width: 123.w,
                            ),
                            const Spacer(),
                            InkWell(
                              child: Image.asset(AppAssets.searchIcon,
                                width: 25.w,
                                height: 25.h,
                              ),
                              onTap: (){},
                            ),
                            SizedBox(width: 10.w,),
                            InkWell(
                              child: Image.asset(AppAssets.camera,
                                width: 25.w,
                                height: 25.h,
                              ),
                              onTap: (){},
                            ),
                            SizedBox( width: 10.w,),
                            InkWell(
                              child: Image.asset(AppAssets.navigationIcon,
                                width: 25.w,
                                height: 25.h,
                              ),
                              onTap: (){},
                            ),
                          ],
                        ),
                        const CarousalWidget(),
                        SizedBox(height: 4.h,),
                        Text(
                          'Another Services',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18.h),
                        ),
                        SizedBox(height: 4.h,),
                      ],
                    ),
                  ]
              ),
               const ServiceWidget(),
              Align(
                alignment: Alignment.topLeft,
                child:
                Text(
                  'Car Part',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18.h),
                ),
              ),

              SizedBox(height: 8.h,),
              const CarPartWidget()
            ],
          ),
        ),
      ),
    );
  }

}