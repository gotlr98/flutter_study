import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../normal/second.dart';
import 'second.dart';

class FirstNamedPage extends StatelessWidget {
  const FirstNamedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("First Named Page"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    // Navigator.of(context).push(
                    //     MaterialPageRoute(builder: (_) => const FirstPage()));
                    Get.offNamed("/second");
                  },
                  child: const Text("Move Next Page"))
            ],
          ),
        ));
  }
}
