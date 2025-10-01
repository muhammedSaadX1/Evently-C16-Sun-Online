import 'package:evently_sun_online/core/routes_manager/app_routes.dart';
import 'package:evently_sun_online/features/auth/login/login.dart';
import 'package:evently_sun_online/features/auth/register/register.dart';
import 'package:evently_sun_online/features/create_event/create_event.dart';
import 'package:evently_sun_online/features/main_layout/main_layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class RoutesManager{
  static Route? router(RouteSettings settings){
    switch(settings.name){
      case AppRoutes.login:{
        return CupertinoPageRoute(builder: (context)=> Login());
      }
      case AppRoutes.register:{
        return CupertinoPageRoute(builder: (context)=> Register());
      }
      case AppRoutes.mainLayout:{
        return CupertinoPageRoute(builder: (context)=> MainLayout());
      }
      case AppRoutes.createEvent:{
        return CupertinoPageRoute(builder: (context)=> CreateEvent());
      }
    }
  }
}