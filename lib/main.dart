import 'package:ecommerce/auth/auth_screen.dart';
import 'package:ecommerce/auth/create_account_screen.dart';
import 'package:ecommerce/auth/forget_password_screen.dart';
import 'package:ecommerce/auth/signin_screen.dart';
import 'package:ecommerce/auth/tell_us_screen.dart';

import 'package:ecommerce/home/notification/notification_screen.dart';
import 'package:ecommerce/home/setting/address_screen.dart';
import 'package:ecommerce/product,page,cart,checkout/product_rating_screen.dart';
import 'package:ecommerce/provider/counter_provider.dart';
import 'package:ecommerce/provider/counter_screen.dart';
import 'package:ecommerce/provider/theme_provider.dart';
import 'package:ecommerce/provider/todo_provider.dart';
import 'package:ecommerce/provider/todo_screen.dart';
import 'package:ecommerce/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=>CounterProvider()),
        ChangeNotifierProvider(create: (_)=>TodoProvider()),
        ChangeNotifierProvider(create: (_)=>ThemeProvider())

      ],
      
      child: Consumer<ThemeProvider>(
        builder: (context, themeProvider, child) {
          return MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            brightness: Brightness.light,
            primarySwatch: Colors.blue,
           
            colorScheme: .fromSeed(seedColor: Colors.deepPurple),
          ),
          darkTheme: ThemeData(
            brightness: Brightness.dark,
            primarySwatch: Colors.indigo,
          ),
themeMode: themeProvider.themeMode,


          home: const TodoScreen(),
          debugShowCheckedModeBanner: false,
        );

          
        },
      ),
    );
  }
}

