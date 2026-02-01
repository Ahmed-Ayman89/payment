import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// ignore: camel_case_types
class CheakList extends StatelessWidget {
  final String imagePath;
  final bool isActive;
  final VoidCallback onTap;

  const CheakList({
    super.key,
    required this.imagePath,
    required this.isActive,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        margin: const EdgeInsets.symmetric(horizontal: 8),
        width: 110,
        height: 70,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            width: 2,
            color: isActive ? Color(0xFF34A853) : Colors.black12,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.03),
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: SvgPicture.asset(
          width: 45,
          height: 30,
          imagePath,
          fit: BoxFit.scaleDown,
        ),
      ),
    );
  }
}


class CheakListView extends StatelessWidget {
  final List<String> images;
  final int activeIndex;
  final Function(int)? onItemSelected;

  const CheakListView({
    super.key,
    required this.images,
    this.activeIndex = -1,
    this.onItemSelected,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(8),
        itemCount: images.length,
        itemBuilder: (context, index) {
          return CheakList(
            imagePath: images[index],
            isActive: index == activeIndex,
            onTap: () {
              if (onItemSelected != null) {
                onItemSelected!(index);
              }
            },
          );
        },
      ),
    );
  }
}


