import 'package:flutter/material.dart';
import 'package:flutter_tutoriial/pages/HomePage.dart';
import 'package:flutter_tutoriial/pages/ItemPage.dart';
import 'package:flutter_tutoriial/pages/cartPage.dart';
import 'package:flutter_tutoriial/pages/chatPage.dart';
import 'package:flutter_tutoriial/pages/loginPage.dart';
import 'package:flutter_tutoriial/pages/messageListPage.dart';
import 'package:flutter_tutoriial/pages/registerPage.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      routes: {
        
        "/": (context) => const Homepage(),
        "cartPage": (context) => const CartPage(),
        "itemPage": (context) => ItemPage(),
        'messageListPage': (context) => MessageListPage(),
        'login': (context) => LoginPage(),
        'chatPage': (context) => ChatPage(),
        'register': (context) => RegisterPage(),
      },
    );
  }
}
