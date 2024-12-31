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
            alignment: Alignment.bottomCenter, // Align widgets at the bottom
            children: [
              // Carousel Slider
              CarouselSlider.builder(
                itemCount: homeDataModel.banner.length,
                itemBuilder: (context, index, realIndex) {
                  return Image.asset(
                    homeDataModel.banner[index],
                    width: 340.w,
                    height: 167.h,
                  );
                },
                options: CarouselOptions(
                  height: 160.h,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 3),
                  autoPlayAnimationDuration: const Duration(seconds: 3),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  scrollDirection: Axis.horizontal,
                  viewportFraction: 1.h,
                  onPageChanged: (index, reason) {
                    // Update the active index in cubit
                    cubit.onChangeIndex(index);
                  },
                ),
              ),
              // Indicator
              Positioned(
                bottom: 15.h, // Position it a little above the bottom
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
