import 'package:navigations/pages/cartoon.dart';
import 'package:navigations/pages/company.dart';
import 'package:navigations/pages/multiverse.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

// git status

//   void dispose() {
//     super.initState();

//     _tabController = TabController(length: 3, vsync: this);
//     _tabController.addListener(_tabChanged)
//   }
//   @override
//   void dispose(){
//     super.dispose()
//   }
//   @override

//   void dispose(){
//     _tabController.dispose()
//   }

//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Center(
//             child: Column(
//           children: [
//             const Text("Multiverse Home Page"),
//             TabBarView(
//               controller: _tabController,
//               children: const [Multiverse(), CartoonNetwork(), Company()],
//             )
//           ],
//         )),
//       ),
//     );
//   }
// }
