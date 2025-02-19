import 'package:flutter/material.dart';
import 'package:whataap/call.dart';
import 'package:whataap/chat.dart';
import 'package:whataap/status.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;  // Variable to keep track of selected tab

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'WhatsApp',
            style: TextStyle(
              fontSize: 30,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w800,
              color: Colors.white,
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 4, 1, 18),
          actions: [
            Icon(Icons.search, color: Colors.white, size: 30),
            Icon(Icons.menu, color: Colors.white, size: 30),
          ],
          bottom: TabBar(
            onTap: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: Colors.green,
            tabs: [
              Tab(
                child: Text(
                  'CHAT',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.green,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'STATUS',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.green,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'CALL',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.green,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color.fromARGB(255, 4, 1, 18),
          currentIndex: _selectedIndex,  // Sync with TabBar
          onTap: _onItemTapped,  // Update tab when bottom navigation is tapped
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.chat, size: 30, color: Colors.white),
              label: 'Chats',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_4, size: 30, color: Colors.white),
              label: 'Communities',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.call, size: 30, color: Colors.white),
              label: 'Calls',
            ),
          ],
        ),
        body: TabBarView(
          children: [
            Chat(),
            Status(),
            Call(),
          ],
        ),
      ),
    );
  }
}
