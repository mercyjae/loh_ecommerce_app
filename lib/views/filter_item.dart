import 'package:flutter/material.dart';


class FilterItem extends StatefulWidget {
  const FilterItem({
    Key? key,
    this.textColor,
    this.focusColor,
    required this.onTap,
    required this.title,
  }) : super(key: key);

  final String title;
  final Color? textColor;
  final Color? focusColor;
  final Function() onTap;

  @override
  State<FilterItem> createState() => _FilterItemState();
}

class _FilterItemState extends State<FilterItem> {
  bool isFocused = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isFocused = !isFocused;
        });
        widget.onTap();
      },
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    // style: GoogleFonts.poppins(
                    //   color: isFocused
                    //       ? widget.focusColor ?? Colors.red
                    //       : widget.textColor ?? Colors.black,
                    //   fontSize: 18,
                    //   fontWeight: FontWeight.w400,
                    // ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 3.0),
          ],
        ),
      ),
    );
  }
}