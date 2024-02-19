import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'pages/normal/first.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("route")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    // Navigator.of(context).push(
                    //     MaterialPageRoute(builder: (_) => const FirstPage()));
                    Get.to(const FirstPage());
                  },
                  child: const Text("Normar Route")),
              ElevatedButton(
                  onPressed: () {
                    // Navigator.of(context).push(
                    //     MaterialPageRoute(builder: (_) => const FirstPage()));
                    Get.toNamed("/first");
                  },
                  child: const Text("Named Route")),
              ElevatedButton(
                  onPressed: () {
                    // Navigator.of(context).push(
                    //     MaterialPageRoute(builder: (_) => const FirstPage()));
                    Get.toNamed("/next", arguments: "Sik");
                  },
                  child: const Text("Give Arguments")),
              ElevatedButton(
                  onPressed: () {
                    // Navigator.of(context).push(
                    //     MaterialPageRoute(builder: (_) => const FirstPage()));
                    Get.toNamed("/user/1234?name=sik&age=27");
                  },
                  child: const Text("static url")),
            ],
          ),
        ));
  }
}

class User {
  String name = "";
  int age = 0;
}
