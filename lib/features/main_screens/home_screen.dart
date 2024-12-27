import 'package:cary/core/utils/assets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Padding(

        padding:  EdgeInsets.only(top: height/20,left: width/50,right: width/50),
        child: Stack(
          children: [
            Align(
              alignment: AlignmentDirectional.centerStart,
              child: Column(
              children: [
                Row(
                  children: [
                    Image.asset(AppAssets.logo,
                      height:50.h,
                      width: 123.w,
                    ),
                    const Spacer(),
                    Image.asset(AppAssets.searchIcon,
                      width: 25.w,
                      height: 25.h,
                    ),
                    SizedBox(width: width*0.02,),
                    Image.asset(AppAssets.camera,
                      width: 25.w,
                      height: 25.h,
                    ),
                    SizedBox(width: width*0.02,),
                    Image.asset(AppAssets.navigationIcon,
                      width: 25.w,
                      height: 25.h,
                    ),
                  ],
                ),

                Column(
                  children: [
                  ],
                ),
              ],
                      ),
            ),]
        ),
      ),

    );
  }
}