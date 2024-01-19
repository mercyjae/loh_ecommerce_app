import 'package:flutter/material.dart';

class FilterTile extends StatefulWidget {
  const FilterTile({
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
  State<FilterTile> createState() => _FilterTileState();
}

class _FilterTileState extends State<FilterTile> {
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
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: isFocused ? Colors.red : Colors.transparent,
          ),
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
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 3.0),
            ],
          ),
        ),
      ),
    );
  }
}
