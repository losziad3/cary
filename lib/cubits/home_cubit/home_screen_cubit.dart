
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../features/screens/account_screen.dart';
import '../../features/screens/cart_screen.dart';
import '../../features/screens/emergency_screen.dart';
import '../../features/screens/home_screen.dart';
import '../../features/screens/sell_screen.dart';
import 'home_screen_states.dart';

class HomeCubit extends Cubit<HomeStates>{
  HomeCubit():super(HomeInitialStates());
  static HomeCubit get(context) => BlocProvider.of(context);
  int currentIndex= 0;
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


}