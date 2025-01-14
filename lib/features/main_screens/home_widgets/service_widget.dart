
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../core/utils/routes.dart';
import '../../../data/models/home_model.dart';

class ServiceWidget extends StatelessWidget {
  const ServiceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.h,  // Height for the grid
      child: GridView.builder(
        scrollDirection: Axis.horizontal,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          crossAxisSpacing: 15.w,
          mainAxisSpacing: 15.h,
          childAspectRatio: 1.3,
        ),
        physics: const BouncingScrollPhysics(),
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
            child: Column(
              children: [
                Container(
                  width: 135.w,
                  height: 120.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15.r)),
                    image: DecorationImage(
                      image: AssetImage(service.imagePath),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Text(
                  service.name,
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          );
        },
        itemCount: serviceModel.length,
      ),
    );
  }
}
