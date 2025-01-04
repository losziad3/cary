import 'package:cary/cubits/home_cubit/home_screen_cubit.dart';
import 'package:cary/cubits/home_cubit/home_screen_states.dart';
import 'package:cary/data/models/home_model.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarousalWidget extends StatelessWidget {
  const CarousalWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final homeDataModel = HomeDataModel();
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: BlocBuilder<HomeCubit, HomeStates>(
        builder: (context, state) {
          final cubit = HomeCubit.get(context);
          return Stack(
            alignment: Alignment.bottomCenter,
            children: [
              // Carousel Slider
              CarouselSlider.builder(
                itemCount: homeDataModel.banner.length,
                itemBuilder: (context, index, realIndex) {
                  return  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.vertical(top: Radius.circular(15.r),
                          bottom:Radius.circular(15.r) ),
                      image: DecorationImage(
                        image: AssetImage(homeDataModel.banner[index],),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );

                },
                options: CarouselOptions(
                  height: 140.h,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 3),
                  autoPlayAnimationDuration: const Duration(seconds: 3),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  scrollDirection: Axis.horizontal,
                  viewportFraction: 0.8.h,
                  onPageChanged: (index, reason) {
                    cubit.onChangeIndex(index);
                  },
                ),
              ),
              // Indicator
              Positioned(
                bottom: 4.h, // Position it a little above the bottom
                child: AnimatedSmoothIndicator(
                  activeIndex: cubit.activeIndex, // Use activeIndex from cubit
                  count: homeDataModel.banner.length,
                  effect: ScrollingDotsEffect(
                    dotHeight: 10.h,
                    dotWidth: 10.w,
                    activeDotColor: Colors.black,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
