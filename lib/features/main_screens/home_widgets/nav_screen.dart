
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import '../../../cubits/home_cubit/home_screen_cubit.dart';
import '../../../cubits/home_cubit/home_screen_states.dart';
import '../account_screen.dart';
import '../cart_screen.dart';
import '../emergency_screen.dart';
import '../home_screen.dart';
import '../sell_screen.dart';

class NavScreen extends StatelessWidget {
  const NavScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

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
          navBarHeight: height/14,
           bottomScreenMargin: 20,
           controller: PersistentTabController(initialIndex:cubit.currentIndex),
           items: [
             PersistentBottomNavBarItem(
                 icon:Icon(Icons.home_outlined),
                 title: 'Home',textStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,),
                 activeColorPrimary: Colors.blue.shade900.withOpacity(0.9),iconSize: width/13.5,

             ),
             PersistentBottomNavBarItem(
                 icon: Icon(Icons.add_circle_outline_rounded),
                 title: 'Sell',textStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,),
               activeColorPrimary: Colors.blue.shade900.withOpacity(0.9),iconSize: width/13.5,
             ),
             PersistentBottomNavBarItem(
                 icon: Icon(Icons.warning_amber_outlined),iconSize: width/13,
                 title: 'Emergency',textStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,),
                 activeColorPrimary: Colors.blue.shade900),
             PersistentBottomNavBarItem(
                 icon: Icon(Icons.shopping_cart_outlined),iconSize: width/13.5,
                 title: 'Cart',textStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,),
               activeColorPrimary: Colors.blue.shade900.withOpacity(0.9),

             ),
             PersistentBottomNavBarItem(
                 icon: Icon(Icons.person_3_outlined),iconSize: width/13.5,
                 title: 'Account',textStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,),
               activeColorPrimary: Colors.blue.shade900.withOpacity(0.9),

             ),
           ],
           padding:  EdgeInsets.only(top: height/150,bottom: height/250),

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