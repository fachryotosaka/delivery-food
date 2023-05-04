import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:umkm/screens/Wistlist_screen.dart';
import 'package:umkm/screens/carts_screen.dart';
import 'package:umkm/screens/chat.dart';
import 'package:umkm/screens/core.dart';
import 'package:umkm/screens/Wistlist_screen.dart';
import 'package:umkm/screens/food_menu.dart';
import 'package:umkm/screens/home_screens.dart';
import 'package:umkm/screens/detail.dart';
import 'package:umkm/screens/deleveryV2.dart';
import 'package:umkm/screens/order_screen.dart';
import 'package:umkm/screens/profile_screen.dart';
import 'package:umkm/screens/signin.dart';
import 'package:umkm/screens/location.dart';
import 'package:umkm/service/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      // initialRoute: '/auth',
      routes: {
        '/home': (context) => const HomeScreen(),
        '/cart': (context) => const CartScreen(),
        '/detail': (context) => const Detail(),
        '/delivery': (context) => const Deleverry(),
        '/menu': (context) => const FoodMenu(),
        '/profile': (context) => const Profile(),
        '/orders': (context) => const OrderScreen(),
        '/core': (context) => const Core(),
        '/signin': (context) => const SignIn(),
        '/Wistlist': (context) => const Wistlist(),
        '/location': (context) => const Location(),
        '/chat': (context) => const Chat(),
        '/auth': (context) => AuthService().handleAuthState(),
      },
      home: AuthService().handleAuthState(),
    );
  }
}
