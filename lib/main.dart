import 'package:flutter/material.dart';
import 'package:uni_events/constants/contants.dart';
import 'package:uni_events/screens/widgets/bottom_bar.dart';

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
      home: const BottomBarWidget(),
    );
  }
}
