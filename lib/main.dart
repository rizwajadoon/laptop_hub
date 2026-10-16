import 'package:flutter/material.dart';
//import 'laptop_detail_screen.dart';
import 'login_screen.dart';
//import 'home_screen.dart';
//import 'add_product_screen.dart';
// import 'order_confirmation_screen.dart';
//import 'profile_screen.dart';

void main() {
  runApp(const LaptopHubApp());
}

class LaptopHubApp extends StatelessWidget {
  const LaptopHubApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Laptop Hub',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF5F6F8),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF173B63),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF173B63),
          foregroundColor: Colors.white,
        ),
      ),

      // Active screen:
      //home: const LaptopDetailsScreen(),
      home: const LoginScreen(),
      //home: const HomeScreen(),
      //home: const AddProductScreen(),
      //home: const OrderConfirmationScreen(),
      //home: const ProfileScreen(),
    );
  }
}
