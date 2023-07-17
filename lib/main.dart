import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:responsiv_ui_example/src/controller/home_controller.dart';
import 'package:responsiv_ui_example/src/utils/colors.dart';
import 'package:responsiv_ui_example/src/view/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        builder: (context, child) {
          return ChangeNotifierProvider(
            create: (context) => HomeController(),
            child: MaterialApp(
              title: 'Flutter Demo',
              debugShowCheckedModeBanner: false,
              theme: ThemeData.dark().copyWith(
                  primaryColor: AppColors.primaryColor,
                  scaffoldBackgroundColor: AppColors.bgColor,
                  canvasColor: AppColors.secondaryColor,
                  textTheme:
                      GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
                          .apply(
                              bodyColor: Colors.white,
                              displayColor: Colors.white)),
              home: const HomeScreen(),
            ),
          );
        });
  }
}
