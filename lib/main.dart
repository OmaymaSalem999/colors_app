
import 'package:color_app/view/splash_screen.dart';
import 'package:color_app/viewmodel/matching_colors_view_model/screen_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
  
    return ScreenUtilInit(
      designSize: const Size(800, 480),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: child,
          
        );
      },
      
      child:const Splash(),
    );
  }
}
