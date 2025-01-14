import 'package:cary/components/default_button_with_icon.dart';
import 'package:cary/core/utils/routes.dart';
import 'package:cary/features/main_screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../components/default_button.dart';
import '../../core/utils/assets.dart';

class CallAmbulanceScreen extends StatelessWidget {
  const CallAmbulanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              context.pop();
            },
            child: Icon(Icons.arrow_back_ios_new_outlined)),
        title: const Padding(
          padding: EdgeInsets.only(top: 10.0),
          child: Text(
            'Call Ambulance',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(
          left: 20.w,
          right: 20.w,
        ),
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
                  defaultButtonWithIcon(
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
