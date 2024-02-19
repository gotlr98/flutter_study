import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'second.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("First Page"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    // Navigator.of(context).push(
                    //     MaterialPageRoute(builder: (_) => const FirstPage()));
                    Get.to(const SecondPage());
                  },
                  child: const Text("Move Next Page"))
            ],
          ),
        ));
  }
}
