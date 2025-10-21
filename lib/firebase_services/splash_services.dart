

import 'dart:async';

import 'package:fire_base/ui/auth/login_screen.dart';
import 'package:fire_base/ui/screen2.dart';
import 'package:fire_base/ui/splash_screen.dart';
import 'package:fire_base/ui/screen2.dart';
import 'package:fire_base/ui/screen3.dart';
import 'package:flutter/material.dart';

class SplashServices{

  void isLogin(BuildContext context){
    Timer(const Duration(seconds:7), ()=> Navigator.push(context,MaterialPageRoute(builder: (context) => Screen2 ()))
    );
}
}