import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todaydo_app/screens/splash_screen.dart';

import 'models/TaskList.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  final MaterialColor primaryColor = const MaterialColor(
    0xff191970,
    <int, Color>{
      50: Color(0xff191970),
      100: Color(0xff191970),
      200: Color(0xff191970),
      300: Color(0xff191970),
      400: Color(0xff191970),
      500: Color(0xff191970),
      600: Color(0xff191970),
      700: Color(0xff191970),
      800: Color(0xff191970),
      900: Color(0xff191970),
    },
  );
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => TaskList()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Todo App',
        theme: ThemeData(
          primarySwatch: primaryColor,
        ),
        home: const SplashScreen(),
      ),
    );
  }
}
