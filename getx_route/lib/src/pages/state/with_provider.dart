import 'package:flutter/material.dart';
import 'package:getx_route/src/controller/count_controller_with_provider.dart';
import 'package:provider/provider.dart';

class WithProvider extends StatelessWidget {
  const WithProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Provider", style: TextStyle(fontSize: 50)),
        Consumer<CountControllerWithProvider>(builder: (_, snapshot, child) {
          return Text("${snapshot.count}",
              style: const TextStyle(fontSize: 50));
        }),
        ElevatedButton(
            onPressed: () {
              Provider.of<CountControllerWithProvider>(context).increase();
            },
            child: const Text("+", style: TextStyle(fontSize: 50)))
      ],
    ));
  }
}
