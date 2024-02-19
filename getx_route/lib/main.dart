import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'src/home.dart';
import 'src/pages/named/first.dart';
import 'src/pages/named/second.dart';
import 'src/pages/next.dart';
import 'src/pages/user.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: "/",
      // routes: {
      //   "/": (context) => const Home(),
      //   "/first": (context) => const FirstNamedPage(),
      //   "/second": (context) => const SecondNamedPage(),
      // },
      getPages: [
        GetPage(
            name: "/", page: () => const Home(), transition: Transition.zoom),
        GetPage(
            name: "/first",
            page: () => const FirstNamedPage(),
            transition: Transition.zoom),
        GetPage(
            name: "/second",
            page: () => const SecondNamedPage(),
            transition: Transition.zoom),
        GetPage(
            name: "/next",
            page: () => const NextPage(),
            transition: Transition.zoom),
        GetPage(
            name: "/user/:uid",
            page: () => const UserPage(),
            transition: Transition.zoom),
      ],
    );
  }
}
