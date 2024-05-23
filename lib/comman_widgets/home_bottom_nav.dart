import 'package:astrocom/ui/call/call_page.dart';
import 'package:astrocom/ui/chat/chat_page.dart';
import 'package:astrocom/ui/home/home_page.dart';
import 'package:astrocom/ui/live/midPage.dart';
import 'package:astrocom/ui/pooja/pooja_page.dart';
import 'package:astrocom/utils/app_colors.dart';
import 'package:flutter/material.dart';

class HomeBottomNavigationBar extends StatefulWidget {
  int? selectionPage;

  HomeBottomNavigationBar({super.key, this.selectionPage});

  @override
  State<HomeBottomNavigationBar> createState() =>
      _HomeBottomNavigationBarState(selectionPage);
}

class _HomeBottomNavigationBarState extends State<HomeBottomNavigationBar> {
   int? _selectedIndex;

  _HomeBottomNavigationBarState(int? selectionPage) {
    print("selectionPageNew  $selectionPage");

    if (selectionPage == null) {
      _selectedIndex = 2;
    } else {
      _selectedIndex = int.parse(selectionPage.toString());
    }
  }

  static  List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    ChatPage(),
    // LivePage(liveID: "12345"),
    MidPage(),
    CallPage(),
    PoojaPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex!),
      ),
      bottomNavigationBar: BottomNavigationBar(
        // backgroundColor: Colors.greenAccent,
        showUnselectedLabels: true,
        // type: BottomNavigationBarType.shifting,
        currentIndex: _selectedIndex!,
        selectedItemColor: Colors.yellow[700],
        unselectedItemColor: Colors.grey,
        // iconSize: 40,
        onTap: _onItemTapped,
        // elevation: 5,
        // selectedIconTheme: IconThemeData(color: AppColors.mainColor),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chat"),
          BottomNavigationBarItem(icon: Icon(Icons.live_tv), label: "Live"),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: "Call"),
          BottomNavigationBarItem(icon: Icon(Icons.event), label: "Pooja"),
        ],
      ),
    );
  }
}



// class BottomNavBar extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return BottomNavigationBar(
//       items: [
//         BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
//         BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chat'),
//         BottomNavigationBarItem(icon: Icon(Icons.phone), label: 'Call'),
//       ],
//       selectedItemColor: Colors.yellow[700],
//       unselectedItemColor: Colors.grey,
//     );
//   }
// }