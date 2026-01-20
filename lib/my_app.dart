import 'package:aura/const/app_theme.dart';
import 'package:aura/routes/app_routes.dart';
import 'package:aura/routes/app_routes_file.dart';
import 'package:aura/routes/bindings/app_binding.dart';
import 'package:aura/utils/applog/app_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Apply full app status & navigation bar color and icon style
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.black,
        systemNavigationBarIconBrightness: Brightness.light,
      ),
    );

    AppSize.size = MediaQuery.of(context).size;

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.instance.initial,
      getPages: appRootRoutesFile,
      enableLog: true,
      themeMode: ThemeMode.light,
      initialBinding: AppBinding(),
      title: 'Aura',
      theme: appThemeData,
      defaultTransition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 300),
    );
  }
}

// import 'package:aura/const/app_theme.dart';
// import 'package:aura/routes/app_routes.dart';
// import 'package:aura/routes/app_routes_file.dart';
// import 'package:aura/routes/bindings/app_binding.dart';
// import 'package:aura/utils/applog/app_size.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     AppSize.size = MediaQuery.of(context).size;
//     return GetMaterialApp(
//       debugShowCheckedModeBanner: false,

//       initialRoute: AppRoutes.instance.initial,
//       getPages: appRootRoutesFile,
//       enableLog: true,
//       themeMode: ThemeMode.light,
//       initialBinding: AppBinding(),

//       title: 'Aura',
//       theme: appThemeData,
//       defaultTransition: Transition.fadeIn,
//       transitionDuration: Duration(milliseconds: 300),
//     );
//   }
// }
