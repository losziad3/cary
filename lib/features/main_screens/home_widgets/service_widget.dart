import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../data/models/home_model.dart';

class ServiceWidget extends StatelessWidget {
  const ServiceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 150.h,
          child: ListView.separated(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              final service = serviceModel[index];
              return Column(
                children: [
                  Container(
                    width: 135.w,
                    height: 120.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15.r)),
                      image: DecorationImage(
                        image: AssetImage(service.imagePath,),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text(
                    service.name,
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                    ),),
                ],
              );
            },
            separatorBuilder: (context, index) =>  SizedBox(width: 5.w),
            itemCount: serviceModel.length,
          ),
        ),
      ],
    );
  }
}
