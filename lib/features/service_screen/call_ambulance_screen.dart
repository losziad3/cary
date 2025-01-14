import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../components/default_button.dart';
import '../../core/utils/assets.dart';

class CallAmbulanceScreen extends StatelessWidget {
  const CallAmbulanceScreen({super.key});

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
            'Call Ambulance',
            style: TextStyle(color: Colors.black),
          ),
        ),
        centerTitle: true,
        toolbarHeight: 80,
      ),
      body:  Padding(
        padding: EdgeInsets.only(left: 20.w, right: 20.w, ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                AppAssets.ambulanceVector,
                height: 260.h,
                width: 350.w,
              ),
              SizedBox(height: 80.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  defaultButton(
                    width: 320.w,
                    onTap: () {},
                    text: 'Call 123',
                    icon: Icons.phone,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
