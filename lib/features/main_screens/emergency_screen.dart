import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../data/models/home_model.dart';

class EmergencyScreen extends StatelessWidget {
  const EmergencyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: EdgeInsets.only(left: 18.0,top: 25),
          child: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {
            },
          ),
        ),
        title: Padding(
          padding: EdgeInsets.only(top: 35.0),
          child: const Text(
            'Emergency',
            style: TextStyle(color: Colors.black),
          ),
        ),
        centerTitle: true,
        toolbarHeight: 80,
      ),


      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.h),
          child: Column(
            children: [
              SizedBox(
                height: 650.h,
                child: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    final service = serviceModel[index];
                    return Stack(
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
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(height: 10.h),
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
