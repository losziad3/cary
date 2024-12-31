import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart'; // Ensure this is imported for BlocProvider
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../cubits/home_cubit/home_screen_cubit.dart'; // Adjust import path

class ServiceWidget extends StatelessWidget {
  const ServiceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final homeCubit = HomeCubit.get(context);
    return SizedBox(
      height: 150.h,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Image.asset(
                '${homeCubit.serviceImg[index]}',
                width: 120.w,
                height: 122.h,
                fit: BoxFit.fill,
              ),
               SizedBox(height: 5.h),

            ],
          );
        },
        separatorBuilder: (context, index) =>  SizedBox(width: 5.w),
        itemCount: homeCubit.serviceImg.length,
      ),
    );
  }
}
