import 'package:flutter/material.dart';
import 'package:plosokerep_apk/resources/clr.dart';

class Bottomnavigationbar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const Bottomnavigationbar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.black, boxShadow: [
        BoxShadow(
            color: Colors.grey,
            offset: Offset(0, 6),
            spreadRadius: 10,
            blurRadius: 10)
      ]),
      child: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: currentIndex,
        onTap: onTap,
        selectedItemColor: primer,
        unselectedItemColor: sekunder,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        iconSize: 30,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Beranda",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.villa),
            label: "Profile Desa",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "UMKM",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.folder_shared_outlined),
            label: "Layanan",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
