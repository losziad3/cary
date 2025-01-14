import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../core/utils/routes.dart';
import '../../data/models/home_model.dart';

class EmergencyScreen extends StatelessWidget {
  const EmergencyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(top: 35.0),
          child: Text(
            'Emergency',
            style: TextStyle(color: Colors.black),
          ),
        ),
        centerTitle: true,
        toolbarHeight: 80,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.all(20.h),
          child: Column(
            children: [
              SizedBox(
                height: 590.h,
                child: GridView.builder(
                  physics: const BouncingScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    crossAxisSpacing: 20.w,
                    mainAxisSpacing: 20.h,
                    childAspectRatio: 330.w / 175.h,
                  ),
                  itemBuilder: (context, index) {
                    final service = serviceModel[index];
                    final String targetRoute ;

                    if(index==0){
                      targetRoute=RoutesName.carRescue;
                    } else if(index==1){
                      targetRoute=RoutesName.callAmbulance;
                    }else{
                      targetRoute=RoutesName.reportAccident;
                    }

                    return GestureDetector(
                      onTap: () {
                        context.push(targetRoute) ;
                      },
                      child: Stack(
                        children: [
                          Container(
                            width: 330.w,
                            height: 175.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25.r),
                              image: DecorationImage(
                                image: AssetImage(service.imagePath),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          // The blur overlay
                          Positioned.fill(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(25.r),
                              child: BackdropFilter(
                                filter: ImageFilter.blur(sigmaX: 2, sigmaY: 1),
                                child: Container(
                                  color: Colors.black.withOpacity(0.2.sp),
                                ),
                              ),
                            ),
                          ),
                          Positioned.fill(
                            child: Center(
                              child: Text(
                                service.name,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 32.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  itemCount: serviceModel.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
