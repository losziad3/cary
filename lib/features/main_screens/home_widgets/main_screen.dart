
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import '../../../core/utils/routes.dart';
import '../../../cubits/home_cubit/home_screen_cubit.dart';
import '../../../cubits/home_cubit/home_screen_states.dart';
import '../account_screen.dart';
import '../cart_screen.dart';
import '../emergency_screen.dart';
import '../home_screen.dart';
import '../sell_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {

    var cubit = HomeCubit.get(context);
    return BlocConsumer<HomeCubit,HomeStates>(
      listener: (BuildContext context,  state) {  },
      builder: (context, state) {
       return Scaffold(

          body:HomeCubit.get(context).navBar[cubit.currentIndex],
         bottomNavigationBar: PersistentTabView(
           context,
           screens:const[
             HomeScreen(),
             SellScreen(),
             EmergencyScreen(),
             CartScreen(),
             AccountScreen(),
           ],
           onItemSelected: (index){
             cubit.onChangePage(index);
             },
           navBarStyle: NavBarStyle.style6,
          navBarHeight: 45.h,
           bottomScreenMargin: 20,
           controller: PersistentTabController(initialIndex:cubit.currentIndex),
           items: [
             PersistentBottomNavBarItem(
                 icon:const Icon(CupertinoIcons.home),
                 title: 'Home',textStyle: const TextStyle(color: Colors.black,fontWeight: FontWeight.w400,),
                 activeColorPrimary: Colors.blue.shade900.withOpacity(0.9),iconSize:20.h,

             ),
             PersistentBottomNavBarItem(
                 icon: const Icon(Icons.add_circle_outline_rounded),
                 title: 'Sell',textStyle: const TextStyle(color: Colors.black,fontWeight: FontWeight.w400,),
               activeColorPrimary: Colors.blue.shade900.withOpacity(0.9),iconSize: 20.h,
             ),
             PersistentBottomNavBarItem(
                 icon: const Icon(Icons.warning_amber_rounded),iconSize: 22.h,
                 title: 'Emergency',textStyle: const TextStyle(color: Colors.black,fontWeight: FontWeight.w400,),
                 activeColorPrimary: Colors.blue.shade900),
             PersistentBottomNavBarItem(
                 icon: const Icon(Icons.shopping_cart_outlined), iconSize: 20.h,
                 title: 'Cart',textStyle: const TextStyle(color: Colors.black,fontWeight: FontWeight.w400,),
               activeColorPrimary: Colors.blue.shade900.withOpacity(0.9),

             ),
             PersistentBottomNavBarItem(
                 icon: const Icon(CupertinoIcons.person),iconSize: 20.h,
                 title: 'Account',textStyle: const TextStyle(color: Colors.black,fontWeight: FontWeight.w400,),
               activeColorPrimary: Colors.blue.shade900.withOpacity(0.9),
             ),
           ],
           padding:  EdgeInsets.only(bottom:3.h,top: 4.h),
           animationSettings: const NavBarAnimationSettings(
             navBarItemAnimation: ItemAnimationSettings( // Navigation Bar's items animation properties.
               duration: Duration(milliseconds: 400),
               curve: Curves.ease,
             ),
             screenTransitionAnimation: ScreenTransitionAnimationSettings( // Screen transition animation on change of selected tab.
               animateTabTransition: true,
               duration: Duration(milliseconds: 200),
               screenTransitionAnimationType: ScreenTransitionAnimationType.slide,
             ),
           ),
         ),
        );
      },
    );
  }
}