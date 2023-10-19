import 'package:flutter/material.dart';
import 'package:pomodoros/home_screen.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            color: Color(0xFF232B55),
          ),
        ),
        cardColor: const Color(0xFFF4EDDB),
      ),
      home: const HomeScreen(),
    );
  }
}

class MyLargeTitle extends StatefulWidget {
  const MyLargeTitle({
    super.key,
  });

  @override
  State<MyLargeTitle> createState() => _MyLargeTitleState();
}

class _MyLargeTitleState extends State<MyLargeTitle> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    // when screen disapper
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      'My Large Title',
      style: TextStyle(
        fontSize: 30,
        color: Theme.of(context).textTheme.titleLarge?.color,
      ),
    );
  }
}

// class App extends StatelessWidget {
//   const App({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: const Color(0xFF181818),
//         body: SingleChildScrollView(
//           child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 20),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   const SizedBox(
//                     height: 80,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     children: [
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.end,
//                         children: [
//                           const Text(
//                             "Hey, Hae-Sik",
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 34,
//                               fontWeight: FontWeight.w800,
//                             ),
//                           ),
//                           Text("Welcome back",
//                               style: TextStyle(
//                                 color: Colors.white.withOpacity(0.8),
//                                 fontSize: 18,
//                               )),
//                         ],
//                       )
//                     ],
//                   ),
//                   const SizedBox(
//                     height: 70,
//                   ),
//                   Text(
//                     'Total Balance',
//                     style: TextStyle(
//                       fontSize: 22,
//                       color: Colors.white.withOpacity(0.8),
//                     ),
//                   ),
//                   const SizedBox(height: 5),
//                   const Text(
//                     '\$5 194 482',
//                     style: TextStyle(
//                       fontSize: 44,
//                       fontWeight: FontWeight.w600,
//                       color: Colors.white,
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 30,
//                   ),
//                   const Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Button(
//                           text: 'Transfer',
//                           bgColor: Colors.amber,
//                           textColor: Colors.black),
//                       Button(
//                           text: 'Request',
//                           bgColor: Color(0xFF1F2123),
//                           textColor: Colors.white),
//                     ],
//                   ),
//                   const SizedBox(
//                     height: 60,
//                   ),
//                   Row(
//                     crossAxisAlignment: CrossAxisAlignment.end,
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       const Text('Wallets',
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 36,
//                             fontWeight: FontWeight.w600,
//                           )),
//                       Text('View All',
//                           style: TextStyle(
//                             color: Colors.white.withOpacity(0.8),
//                             fontSize: 18,
//                           )),
//                     ],
//                   ),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   const CurrencyCard(
//                     name: 'Euro',
//                     code: 'EUR',
//                     amount: '6 428',
//                     icon: Icons.euro_rounded,
//                     isInverted: false,
//                     order: Offset(0, 0),
//                   ),
//                   const CurrencyCard(
//                     name: 'Bitcoin',
//                     code: 'BTC',
//                     amount: '9 785',
//                     icon: Icons.currency_bitcoin,
//                     order: Offset(0, -20),
//                     isInverted: true,
//                   ),
//                   const CurrencyCard(
//                     name: 'Dollar',
//                     code: 'USD',
//                     amount: '428',
//                     icon: Icons.money,
//                     order: Offset(0, -40),
//                     isInverted: false,
//                   ),
//                 ],
//               )),
//         ),
//       ),
//     );
//   }
// }
