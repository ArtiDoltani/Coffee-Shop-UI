import 'package:coffee_shop/Screens/first_screen.dart';
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
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          iconTheme:
              const IconThemeData(color: Colors.white, opacity: 0.5, size: 35),
          scaffoldBackgroundColor: const Color(0xff212325),
        ),
        home: const FirstScreen());
  }
}
