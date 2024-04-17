import 'package:curved_nav_bar/curved_bar/curved_action_bar.dart';
import 'package:curved_nav_bar/fab_bar/fab_bottom_app_bar_item.dart';
import 'package:curved_nav_bar/flutter_curved_bottom_nav_bar.dart';
import 'package:flutter/material.dart';

import '../../../utils/color.dart';
import '../Account/Account.dart';
// import '../Add_Transaction/Add-transaction.dart';
import '../analyticsScreen/analytics.dart';
import '../homeScreen/home.dart';
import '../moreScreen/more.dart';

class bottemscreen extends StatelessWidget {
  const bottemscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BottemScreen();
  }
}

class BottemScreen extends StatefulWidget {
  const BottemScreen({super.key});

  @override
  State<BottemScreen> createState() => _SectionState();
}

class _SectionState extends State<BottemScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            bottomNavigationBar: CurvedNavBar(
            actionButton: CurvedActionBar(
            onTab: (value) {

        /// perform action here
        print(value);
  },
    activeIcon: InkWell(
    onTap: () {
    setState(() {

    });
    },
    child: Container(
    padding: EdgeInsets.all(10),
    decoration:
    BoxDecoration(color: Color(0xff6b58b1), shape: BoxShape.circle),
    child: Icon(
    Icons.downloading_sharp,
    size: 40,
    color: Colors.white,
    ),
    ),
    ),
    inActiveIcon: InkWell(
      onTap: () {
        setState(() {

          Navigator.pushReplacementNamed(context, '/add');
        });
      },
    child: Container(
    padding: EdgeInsets.all(18),
    decoration:
    BoxDecoration(color: Color(0XFF6a5ca8), shape: BoxShape.circle),
    child: Icon(
    Icons.add,
    size: 30,
    color: (dark) ? Colors.white : Colors.black,
    ),
    ),
    ),
    text: ''),
    activeColor: Color(0XFF6a5ca8),
    navBarBackgroundColor: Colors.white,
    inActiveColor: Colors.black45,
    appBarItems: [
    FABBottomAppBarItem(
    activeIcon: Icon(
    Icons.home,
    color: Color(0XFF6a5ca8),
    ),
    inActiveIcon: Icon(
    Icons.home,
    color: Colors.black54,
    ),
    text: 'Home'),
    FABBottomAppBarItem(
    activeIcon: Icon(
    Icons.edit,
    color: Color(0XFF6a5ca8),
    ),
    inActiveIcon: Icon(
    Icons.bar_chart_rounded,
    color: Colors.black54,
    ),
    text: 'Analysis'),
    FABBottomAppBarItem(
    activeIcon: Icon(
    Icons.photo_rounded,
    color:Color(0XFF6a5ca8),
    ),
    inActiveIcon: Icon(
    Icons.home_work_rounded,
    color: Colors.black54,
    ),
    text: 'Accounts'),
    FABBottomAppBarItem(
    activeIcon: Icon(
    Icons.more_horiz_outlined,
    color: Color(0XFF6a5ca8),
    ),
    inActiveIcon: Icon(
    Icons.account_circle_rounded,
    color: Colors.black54,
    ),
    text: 'Account'),


    ],
    bodyItems: [
    HomeScreen(),
    AnalyticsScreen(),
    Account(),
    MoreScreen(
    )
    ,
    ]
    ,
    // actionBarView :AddTransaction(),
    ),
    ),
    );
  }
}
// Container bottem_navigation_bar() {
//   return Container(
//     height: 120,
//     width: 500,
//     child: Stack(
//       children: [
//         Padding(
//           padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
//           child: Stack(
//             children: [
//               Container(
//                 height: 60,
//                 width: 450,
//                 decoration: BoxDecoration(
//                   color: (dark) ? Colors.white : Colors.black,
//                 ),
//                 child: Row(
//                   children: [
//                     SizedBox(
//                       width: 10,
//                     ),
//                     InkWell(
//                       onTap: () {
//                         setState(() {
//                           hometoch = true;
//                           accounttoch = false;
//                           moretoch = false;
//                           analytoch = false;
//                         });
//                       },
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Icon(
//                             Icons.home_rounded,
//                             size: 30,
//                             color: (hometoch)
//                                 ? (dark)
//                                 ? Colors.black
//                                 : Colors.white
//                                 : Colors.grey,
//                           ),
//                           Text(
//                             'Home',
//                             style: TextStyle(
//                                 color: (hometoch) ? text : Colors.grey),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Spacer(),
//                     InkWell(
//                       onTap: () {
//                         setState(() {
//                           analytoch = true;
//                           hometoch = false;
//                           accounttoch = false;
//                           moretoch = false;
//                         });
//                       },
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Icon(Icons.bar_chart_outlined,
//                               size: 35,
//                               color: (analytoch)
//                                   ? (dark)
//                                   ? Colors.black
//                                   : Colors.white
//                                   : Colors.grey),
//                           Text(
//                             'Analysis',
//                             style: TextStyle(
//                                 color: (analytoch) ? text : Colors.grey),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Spacer(),
//                     SizedBox(
//                       width: 25,
//                     ),
//                     InkWell(
//                       onTap: () {
//                         setState(() {
//                           accounttoch = true;
//                           analytoch = false;
//                           hometoch = false;
//                           moretoch = false;
//                         });
//                       },
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Icon(Icons.home_work_outlined,
//                               size: 35,
//                               color: (accounttoch)
//                                   ? (dark)
//                                   ? Colors.black
//                                   : Colors.white
//                                   : Colors.grey),
//                           Text(
//                             'Accounts',
//                             style: TextStyle(
//                                 color: (accounttoch) ? text : Colors.grey),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Spacer(),
//                     InkWell(
//                       onTap: () {
//                         setState(() {
//                           moretoch = true;
//                           accounttoch = false;
//                           analytoch = false;
//                           hometoch = false;
//                         });
//                       },
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Icon(Icons.more_horiz_outlined,
//                               size: 35,
//                               color: (moretoch)
//                                   ? (dark)
//                                   ? Colors.black
//                                   : Colors.white
//                                   : Colors.grey),
//                           Text('More',
//                               style: TextStyle(
//                                   color: (moretoch) ? text : Colors.grey)),
//                         ],
//                       ),
//                     ),
//                     SizedBox(
//                       width: 10,
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.fromLTRB(170, 30, 10, 0),
//           child: Container(
//             height: 75,
//             width: 75,
//             decoration: BoxDecoration(
//               color: Color(0xffF0F1F3),
//               shape: BoxShape.circle,
//               boxShadow: [
//                 BoxShadow(
//                   offset: Offset(0, 1),
//                   spreadRadius: 0.5,
//                   blurRadius: 1,
//                   color: Colors.white,
//                 )
//               ],
//             ),
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.fromLTRB(175, 35, 40, 0),
//           child: InkWell(
//             onTap: () {
//               Navigator.of(context).pushNamed('/analytics');
//             },
//             child: Container(
//               height: 63,
//               width: 63,
//               decoration: BoxDecoration(
//                 color: (dark) ? Colors.black : Colors.white,
//                 shape: BoxShape.circle,
//                 boxShadow: [
//                   BoxShadow(
//                     offset: Offset(0, 1.5),
//                     spreadRadius: 0.5,
//                     blurRadius: 2,
//                     color: Colors.black54,
//                   )
//                 ],
//
//               ),
//               child: Center(
//                 child: Icon(
//                   Icons.add,
//                   color: (dark) ? Colors.white : Colors.black,
//                   size: 40,
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ],
//     ),
//   );
// }
