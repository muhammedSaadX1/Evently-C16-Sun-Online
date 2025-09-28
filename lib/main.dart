import 'package:evently_sun_online/config/theme/theme_manager.dart';
import 'package:evently_sun_online/core/routes_manager/app_routes.dart';
import 'package:evently_sun_online/core/routes_manager/router.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main(){
  runApp(const Evently());
}

class Evently extends StatelessWidget {
  const Evently({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize:Size(393, 841) ,
      splitScreenMode: true,
      minTextAdapt: true,
      builder:(context, _)=>   MaterialApp(
        debugShowCheckedModeBanner: false,

        onGenerateRoute: RoutesManager.router,
        initialRoute: AppRoutes.mainLayout,
        theme: ThemeManager.light,
        darkTheme: ThemeManager.dark,
        locale: Locale("en"),
      ),

    );
  }
}
