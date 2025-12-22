import 'package:creating_first_project_alhamdulillah/Pages_or_Scareens/Home_page.dart';
import 'package:creating_first_project_alhamdulillah/Pages_or_Scareens/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(), hamne niche route diya tu already home page ek rote or ek route dere hai tu wo error dera
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.green),
      darkTheme: ThemeData(brightness: .light, primarySwatch: Colors.green),
      initialRoute:"/homepage",
      routes: {
        "/": (context) => LoginPage(),
        "/homepage": (context) => HomePage(),
        "/login": (context) => LoginPage(),
      },
    );
  }
}
