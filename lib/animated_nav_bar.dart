import 'package:flutter/material.dart';

class AnimatedNavBar extends StatefulWidget {
  const AnimatedNavBar({super.key});

  @override
  State<AnimatedNavBar> createState() => _AnimatedNavBarState();
}

class _AnimatedNavBarState extends State<AnimatedNavBar> {
  int _selectedIndex = 0;

  final List<IconData> _unselectedIcons = [
    Icons.home_outlined,
    Icons.favorite_border,
    Icons.shopping_bag_outlined,
    Icons.settings_outlined,
  ];

  final List<IconData> _selectedIcons = [
    Icons.home,
    Icons.favorite,
    Icons.shopping_bag,
    Icons.settings,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20, bottom: 24),
      height: 70,
      decoration: BoxDecoration(
        color: const Color(0xFF1E1E24),
        borderRadius: BorderRadius.circular(35),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(4, (index) {
          final isSelected = _selectedIndex == index;
          return GestureDetector(
            onTap: () {
              setState(() {
                _selectedIndex = index;
              });
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeOutBack,
              padding: const EdgeInsets.all(10),
              transform: Matrix4.identity()..scale(isSelected ? 1.2 : 1.0),
              child: Icon(
                isSelected ? _selectedIcons[index] : _unselectedIcons[index],
                color: Colors.white,
                size: isSelected ? 28 : 24,
              ),
            ),
          );
        }),
      ),
    );
  }
}
