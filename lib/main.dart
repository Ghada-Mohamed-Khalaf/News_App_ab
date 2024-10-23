import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:news_app_a/layout/news_app/news_layout.dart';

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
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          titleTextStyle:TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.red,
            statusBarIconBrightness: Brightness.light,
          ),
          elevation: 0.0,
          backgroundColor: Colors.white,
        ),
      ),
      home: NewsLayout(),
    );
  }
}
