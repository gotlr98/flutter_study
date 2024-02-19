import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'pages/first.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("route")),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: () {
                    // Navigator.of(context).push(
                    //     MaterialPageRoute(builder: (_) => const FirstPage()));
                    Get.to(const FirstPage());
                  },
                  child: const Text("Normar Route"))
            ],
          ),
        ));
  }
}
