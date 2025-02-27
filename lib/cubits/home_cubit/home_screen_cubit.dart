
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../features/main_screens/account_screen.dart';
import '../../features/main_screens/cart_screen.dart';
import '../../features/main_screens/emergency_screen.dart';
import '../../features/main_screens/home_screen.dart';
import '../../features/main_screens/sell_screen.dart';
import 'home_screen_states.dart';

class HomeCubit extends Cubit<HomeStates>{
  HomeCubit():super(HomeInitialStates());
  static HomeCubit get(context) => BlocProvider.of(context);
  int currentIndex= 0;
  int activeIndex=0;

  List<Widget> navBar=const
  [
    HomeScreen(),
    SellScreen(),
    EmergencyScreen(),
    CartScreen(),
    AccountScreen()
  ];


  void onChangePage(index) {
    currentIndex = index;
    emit(OnChangeStates());
  }
  void onChangeIndex(index) {
    activeIndex = index;
    emit(OnChangeIndicatorStates());
  }



}