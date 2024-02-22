import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controller/count_controller_with_provider.dart';
import 'state/with_getx.dart';
import 'state/with_provider.dart';

class SimpleStateManagePage extends StatelessWidget {
  const SimpleStateManagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Simple state manage"),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ElevatedButton(
            //     onPressed: () {},
            //     child: const Text(
            //       "+",
            //       style: TextStyle(fontSize: 30),
            //     ))
            Expanded(
              child: WithGetX(),
            ),
            Expanded(
              child: ChangeNotifierProvider<CountControllerWithProvider>(
                  create: (_) => CountControllerWithProvider(),
                  child: WithProvider()),
            )
          ],
        ),
      ),
    );
  }
}
