import 'package:flutter/material.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';

import 'package:kelas/theme.dart';
import 'package:kelas/home/home_page.dart';
import 'package:kelas/presensi/presensi_page.dart';
import 'package:kelas/task/task.dart';
import 'package:kelas/profile/profile.dart';
// Import halaman lain yang Anda ingin tampilkan di navbar

class Navbar extends StatefulWidget {
  const Navbar({super.key});
  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    const Task(),
    const Presensi(),
    const Profile(),
    // Tambahkan halaman lainnya di sini jika ada
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: navColor,
        backgroundColor: texWhiteColor,
        buttonBackgroundColor: yellowColor,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: <CurvedNavigationBarItem>[
          CurvedNavigationBarItem(
            child: Icon(
              Icons.home,
              color: texWhiteColor,
            ),
          ),
          CurvedNavigationBarItem(
              child: Icon(
            Icons.task_outlined,
            color: texWhiteColor,
          )),
          CurvedNavigationBarItem(
              child: Icon(
            Icons.calendar_month_outlined,
            color: texWhiteColor,
          )),
          CurvedNavigationBarItem(
              child: Icon(
            Icons.account_circle,
            color: texWhiteColor,
          )),
          // Tambahkan CurvedNavigationBarItem untuk halaman tambahan di sini
        ],
      ),
    );
  }
}
