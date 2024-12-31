import 'package:cary/core/utils/assets.dart';
import 'package:cary/features/main_screens/home_widgets/carousal_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding:  EdgeInsets.only(top: 32.h,left: 10.w,right: 10.w),
        child: Stack(
            children: [
              Column(
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


                ],
              ),]
        ),
      ),
    );
  }

}