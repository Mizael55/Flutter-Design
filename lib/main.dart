import 'package:disenos/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screens/basic_desing.dart';
import 'screens/scroll_design.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home_screen',
      theme: ThemeData.dark(),
      routes: {
        'basic_design': (_) => const BasicDesingScreen(),
        'scroll_screen': (_) => const ScrollScreen(),
        'home_screen': (_) => const HomeScreen(),
      },
    );
  }
}
