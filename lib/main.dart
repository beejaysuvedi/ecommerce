import 'package:ecommerce/auth/auth_screen.dart';
import 'package:ecommerce/auth/create_account_screen.dart';
import 'package:ecommerce/auth/forget_password_screen.dart';
import 'package:ecommerce/auth/signin_screen.dart';
import 'package:ecommerce/auth/tell_us_screen.dart';
import 'package:ecommerce/home/notification/notications.dart';
import 'package:ecommerce/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

