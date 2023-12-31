import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const CustomBottomNavigationBar({
    required this.currentIndex,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      items: [
        _buildBottomNavigationBarItem(
          'assets/home.png',
          'Home',
          0,
        ),
        _buildBottomNavigationBarItem(
          'assets/document.png',
          'Documents',
          1,
        ),
      ],
      currentIndex: currentIndex,
      selectedItemColor: Color(0xFFF4811F),
      unselectedItemColor: Colors.black,
      onTap: onTap,
    );
  }

  BottomNavigationBarItem _buildBottomNavigationBarItem(
    String iconAsset,
    String label,
    int index,
  ) {
    return BottomNavigationBarItem(
      icon: _buildIconImage(iconAsset, index),
      label: label,
    );
  }

  Image _buildIconImage(String asset, int index) {
    return Image.asset(
      asset,
      color: _getIconColor(index),
    );
  }

  Color _getIconColor(int index) {
    return currentIndex == index ? Color(0xFFF4811F) : Colors.black;
  }
}