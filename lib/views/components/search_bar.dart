import 'package:flutter/material.dart';

import 'package:loh_ecommerce_app/views/components/text_field.dart';

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
    return Visibility(
      visible: isVisible,
      child: Row(
        children: [
          Expanded(
            child: SearchTextField(
              hint: 'Search items',
              fillColor: Colors.grey.shade200,
              controller: searchController,
              onChanged: onSearchChanged,
              onClearQuery: () => onClearQuery(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: InkWell(
              onTap: () => onCloseSearch(),
              child: Text(
                "Close",
             //   style: GoogleFonts.poppins(color: Colors.red),
              ),
            ),
          )
        ],
      ),
    );
  }
}
