import 'package:ai_personal_fitness_coach/app/routes/app_pages.dart';
import 'package:ai_personal_fitness_coach/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'app/core/theme/app_theme.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Set preferred orientations
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarColor: Color(0xFF0F0F1E),
      systemNavigationBarIconBrightness: Brightness.light,
    ),
  );
  
  runApp(const FitnessCoachApp());
}

class FitnessCoachApp extends StatelessWidget {
  const FitnessCoachApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'AI Fitness Coach',
      debugShowCheckedModeBanner: false,
        theme: AppTheme.darkTheme,
      themeMode: ThemeMode.dark,
      
      defaultTransition: Transition.cupertino,
      transitionDuration: const Duration(milliseconds: 300),
      
      initialRoute: AppRoutes.login,
      
      getPages: AppPages.routes,
  
    );
  }
}
