import 'package:flutter/material.dart';


class ChipItem extends StatelessWidget {
  const ChipItem(
      {super.key,
        required this.onTap,
        required this.hasFocus,
        required this.current,
        required this.index,
        required this.title});

  final Function() onTap;
  final bool hasFocus;
  final int current;
  final int index;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        margin: const EdgeInsets.all(8),
        width: 100,
        height: 40,
        decoration: BoxDecoration(
          color: hasFocus ? Colors.purple : Colors.white,
          border: Border.all(
            color: current == index ? Colors.purple : Colors.black,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 15,fontWeight: FontWeight.w500,
                  color: current == index ? Colors.white : Colors.black,
            ),
           
          ),
        ),
      ),
    );
  }
}