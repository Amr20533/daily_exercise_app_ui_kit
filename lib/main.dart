import 'package:daily_exercise_app/constants.dart';
import 'package:daily_exercise_app/layout/home_layout/home_layout.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Exercise App',
      theme: ThemeData(
        // fontFamily: 'Cairo',
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: Colors.deepOrange,
          unselectedItemColor: Colors.black87,

        )
      ),
      home: const HomeScreen(),
    );
  }
}
