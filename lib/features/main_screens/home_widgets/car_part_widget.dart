import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cary/data/models/home_model.dart';
import 'package:flutter/material.dart';

class CarPartWidget extends StatelessWidget {
  const CarPartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    //final carPartModel = HomeDataModel().carPart;


    return SizedBox(
      height: 130.h,
      width: double.infinity,// Total height of the widget
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: GridView.builder(
              scrollDirection: Axis.horizontal, // Horizontal scrolling
              gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisSpacing: 8.0.w,
                crossAxisSpacing: 8.0.w,
                childAspectRatio: 0.76.w, // Adjust ratio as needed
              ),
              itemCount: carModel.length,
              itemBuilder: (context, index) {
                final carPart=carModel[index];
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(15.r),
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.vertical(top: Radius.circular(15.r),bottom:Radius.circular(15.r) ),
                            image: DecorationImage(
                              image: AssetImage(carPart.imagePath),
                              fit: BoxFit.cover,

                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 4.h,right: 10.w,left: 10.w,bottom: 10.h),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(carPart.name,style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.bold),),
                                const Spacer(),
                                const Icon(Icons.shopping_cart_outlined)
                              ],
                            ),
                            Row(
                              children: [
                                Text('${carPart.oldPrice} USD',
                                    style : TextStyle(
                                      decoration: TextDecoration.lineThrough,
                                      color: Colors.grey
                                    )),
                                SizedBox(width: 10.w,),
                                Text('${carPart.price} USD',),
                              ],
                            ),

                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
