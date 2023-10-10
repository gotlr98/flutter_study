import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                  Text("Hey, Sik",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Text("Welcome back"),
              ],
            )
          ],
        )
      ),
    );

  }
}