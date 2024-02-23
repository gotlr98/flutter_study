import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_route/src/controller/count_controller_with_getx.dart';
import 'package:provider/provider.dart';

import '../controller/count_controller_with_provider.dart';
import 'state/with_getx.dart';
import 'state/with_provider.dart';

class SimpleStateManagePage extends StatelessWidget {
  const SimpleStateManagePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(CountControllerWithGetX());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Simple state manage"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Expanded(
              child: WithGetX(),
            ),
            Expanded(
              child: ChangeNotifierProvider<CountControllerWithProvider>(
                create: (_) => CountControllerWithProvider(),
                child: const WithProvider(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
