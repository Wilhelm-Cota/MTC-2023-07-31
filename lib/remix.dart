import 'package:flutter/material.dart';

import 'nhistory.dart';
import 'nhome.dart';
import 'nprofile.dart';
import 'nsales.dart';
import 'nwallet.dart';

class Remix extends StatefulWidget {
  const Remix({super.key});

  @override
  State<Remix> createState() => _RemixState();
}

class _RemixState extends State<Remix>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    
    final tabs = [
      NavigationHome(),
      NavigationHistory(),
      NavigationSales(),
      NavigationWallet(),
      NavigationProfile(),
    ];


    return Scaffold(
      backgroundColor: Color(0xFF2495D2),
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xFF2495D2),
        unselectedItemColor: Colors.grey.shade700,
        unselectedLabelStyle: TextStyle(color: Colors.black,),
        selectedFontSize: 20,
        unselectedFontSize: 17,

        iconSize: 30,
        elevation: 2,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home', ),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: 'History'),
          BottomNavigationBarItem(icon: Icon(Icons.money), label: 'Sales'),
          BottomNavigationBarItem(icon: Icon(Icons.wallet), label: 'Wallet'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
         onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
// Padding(
//             padding: EdgeInsets.only(top: 285),
//             child: Container(
//               width: MediaQuery.of(context).size.width,
//               height: MediaQuery.of(context).size.height * 0.68,
//               decoration: BoxDecoration(
//                 color: Color(0xFFF8F8F8),
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(20),
//                   topRight: Radius.circular(20),
//                 ),
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Padding(
//                     padding: EdgeInsets.only(left: 22, top: 16),
//                     child: Text(
//                       'Recent Transactions',
//                       style: TextStyle(fontWeight: FontWeight.w600),
//                     ),
//                   ),
//                   SizedBox(height: 10),
//                   Expanded(
//                     // Wrap ListView.builder with Expanded to take remaining space
//                     child: ListView.builder(
//                       itemBuilder: (context, index) {
//                         return Padding(
//                           padding: const EdgeInsets.only(left: 22, right: 10),
//                           child: Container(
//                             child: ListTile(
//                               leading:
//                                   Image.asset('images/mtc-spectra-logo 1.png'),
//                               trailing: Text('-N\$ 18000.00'),
//                               title: Text('MTC'),
//                               subtitle: Text('Airtime'),
//                             ),
//                           ),
//                         );
//                       },
//                       itemCount: 6,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),