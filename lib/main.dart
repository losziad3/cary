import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'const/bloc_observe.dart';
import 'cubits/home_cubit/home_screen_cubit.dart';
import 'features/screens/nav_screen.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=>HomeCubit(),
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
        ),
        home: NavScreen(),
      ),
    );
  }
}
