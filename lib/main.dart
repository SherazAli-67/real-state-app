import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:real_state_app/src/bloc_cubit/main_menu_bloc/main_menu_bloc.dart';
import 'package:real_state_app/src/res/app_colors.dart';
import 'package:real_state_app/src/res/app_strings.dart';
import 'package:real_state_app/src/features/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_)=> MainMenuTabChangeBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: appTitle,
        theme: ThemeData(
          fontFamily: appFontFamily,
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
        ),
        home: WelcomePage()
      ),
    );
  }
}

