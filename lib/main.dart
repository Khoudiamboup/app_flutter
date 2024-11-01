import 'package:flutter/material.dart';
import 'screens/first_screen.dart';
import 'screens/second_screen.dart';
import 'screens/third_screen.dart';
import 'screens/login_screen.dart';
import 'screens/signup_screen.dart';
import 'screens/valide_screen.dart';
import 'screens/furniture_screen.dart';
import 'screens/detail_screen.dart';
import 'screens/fur_screen.dart';
import 'screens/discount_screen.dart';
import 'screens/desc_screen.dart';
import 'screens/checkout_screen.dart';
import 'screens/detail2_screen.dart';
import 'screens/paye_screen.dart';
import 'screens/choose_screen.dart';
import 'screens/profile_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(
      //   primarySwatch: Colors.green, 
      //   colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.green)
      //     .copyWith(secondary: Colors.greenAccent), 
      //   scaffoldBackgroundColor: Colors.lightGreen[100], 
      //   appBarTheme: AppBarTheme(
      //     backgroundColor: Colors.lightGreen[100], 
      //     elevation: 0, 
      //   ),
      // ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => FirstScreen(),
        '/second': (context) => SecondScreen(),
        '/third': (context) => ThirdScreen(),
        '/login': (context) => LoginScreen(),
        '/signup': (context) => SignupScreen(),
        '/valide': (context) => ValideScreen(),
        '/furniture': (context) => FurnitureScreen(),
        '/detail': (context) => DetailScreen(),
        '/fur': (context) => FurScreen(),
        '/desc': (context) => DescScreen(),
        '/dis': (context) => DiscountScreen(),
        '/check': (context) => CheckoutScreen(),
        '/checko': (context) => Detail2Screen(),
        '/paye': (context) => PayeScreen(),
        '/cho': (context) => ChooseScreen(),
        '/profil': (context) => ProfileScreen(),
      },
    );
  }
}
