import 'package:flutter/material.dart';

class AppSearchBar extends StatelessWidget {
  final TextEditingController searchController;
  final bool isVisible;
  final Function(String) onSearchChanged;
  final VoidCallback onCloseSearch;
  final VoidCallback onClearQuery;
  final String currentTab;

  const AppSearchBar({
    Key? key,
    required this.searchController,
    required this.isVisible,
    required this.onSearchChanged,
    required this.onCloseSearch,
    required this.onClearQuery,
    required this.currentTab,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Visibility(
      visible: isVisible,
      child: Row(
        children: [
          Container(
            height: 46,
            width: size.width * 0.8,
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(98),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 24, right: 16),
              child: TextFormField(
                textAlign: TextAlign.start,
                maxLines: 1,
                onChanged: onSearchChanged,
                autofocus: false,
                cursorColor: Colors.black,
                textInputAction: TextInputAction.next,
                controller: searchController,
                decoration: InputDecoration(
                  hintText: 'Search items',
                  border: InputBorder.none,
                  suffixIcon: InkWell(
                    onTap: onClearQuery,
                    child: const Padding(
                      padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                      child: Icon(
                        Icons.clear_rounded,
                        color: Colors.purple,
                      ),
                    ),
                  ),
                  hintStyle: const TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: InkWell(
              onTap: () => onCloseSearch(),
              child: const Text(
                "Close",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
