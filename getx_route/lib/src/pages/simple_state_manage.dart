import 'package:flutter/material.dart';

class SimpleStateManagePage extends StatelessWidget {
  const SimpleStateManagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Simple manage"),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: withGetX(),
            ),
            Expanded(
              child: withProvider(),
            )
          ],
        ),
      ),
    );
  }
}
