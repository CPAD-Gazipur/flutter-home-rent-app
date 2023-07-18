import 'package:flutter/material.dart';
import 'package:flutter_home_rent_app/view/home/home_screen.dart';
import 'package:flutter_home_rent_app/view/menu/menu_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home Rent App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

// class EntryApp extends StatefulWidget {
//   const EntryApp({super.key});

//   @override
//   State<EntryApp> createState() => _EntryAppState();
// }

// class _EntryAppState extends State<EntryApp> with TickerProviderStateMixin {
//    late MenuProvider menuProvider;

//   @override
//   void initState() {
//     super.initState();

//     menuProvider = MenuProvider(vsync: this)
//       ..addListener(
//         () => setState(
//           () {},
//         ),
//       );
//   }

//   @override
//   void dispose() {
//     // menuProvider.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//       create: (context) => menuProvider,
//       child: ZoomHomeScreen(
//         menuScreen: const MenuScreen(),
//         contentScreen: Layout(
//           contentBuilder: (cc) => HomeScreen(),
//         ),
//       ),
//     );
//   }
// }
