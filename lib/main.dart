import 'package:flutter/material.dart';
import 'package:uni_events/constants/constants.dart';
import 'package:uni_events/screens/home.dart';
import 'package:uni_events/screens/login_page.dart';
import 'package:uni_events/screens/my_events.dart';
import 'package:uni_events/screens/register_page.dart';
import 'package:uni_events/widgets/bottom_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return MaterialApp.router(
    //   title: 'Events',
    //   debugShowCheckedModeBanner: false,
    //   theme: ThemeData(
    //     primaryColor: Constants().primaryColor,
    //     scaffoldBackgroundColor: Colors.white,
    //     textTheme: const TextTheme(
    //       bodyText2: TextStyle(color: Colors.white),
    //     ),
    //   ),
    //   routeInformationParser: AppRouter().router.routeInformationParser,
    //   routerDelegate: AppRouter().router.routerDelegate,
    // );
    return MaterialApp(
      title: 'Events',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Constants().primaryColor,
        scaffoldBackgroundColor: Colors.white,
        textTheme: const TextTheme(
          bodyText2: TextStyle(color: Colors.white),
        ),
      ),
      home: RegisterPage(),
    );
  }
}
