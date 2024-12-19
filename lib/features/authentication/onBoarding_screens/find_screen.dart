import 'package:cary/core/utils/assets.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/colors.dart';

class FindScreen extends StatelessWidget {
  const FindScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "assets/auth_assets/Ellipse 1.png",
              ),
              fit: BoxFit.fill),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    "Skip",
                    style: TextStyle(color: AppColors.darkBlue),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        AppAssets.tire,
                        height: 54,
                        width: 74,
                      ),
                      SizedBox(
                        width: 18,
                      ),
                      Image.asset(
                        AppAssets.steeringWheel,
                        height: 52,
                        width: 54,
                      ),
                      SizedBox(
                        width: 18,
                      ),
                      Image.asset(
                        AppAssets.muffler,
                        height: 45,
                        width: 80,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Image.asset(
                    AppAssets.car,
                    height: 88,
                    width: 202,
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        AppAssets.speakers,
                        height: 44,
                        width: 78,
                      ),
                      SizedBox(
                        width: 18,
                      ),
                      Image.asset(
                        AppAssets.radio,
                        height: 26,
                        width: 81,
                      ),
                      SizedBox(
                        width: 18,
                      ),
                      Image.asset(
                        AppAssets.battery,
                        height: 38,
                        width: 58,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    "Find",
                    style: TextStyle(
                        fontSize: 32,
                        color: AppColors.darkBlue,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                      "Find spare parts for your car with ease, with the ability to deliver them to the location of your choice",
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.darkBlue,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 46, vertical: 13),
                    decoration: BoxDecoration(
                        color: AppColors.darkBlue,
                        borderRadius: BorderRadius.circular(15)),
                    child: Text("Next"),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
