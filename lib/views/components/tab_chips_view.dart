import 'package:flutter/material.dart';
import 'package:loh_ecommerce_app/list_items.dart';


import '../chip_item.dart';

class TabChipsView extends StatelessWidget {
  final TabController tabController;
  final int currentTab;
  final Function(int) onTabSelected;

  const TabChipsView({
    Key? key,
    required this.tabController,
    required this.currentTab,
    required this.onTabSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: double.infinity,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: tabItems.keys.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (ctx, index) {
          return ChipItem(
            title: tabItems.keys.elementAt(index),
            hasFocus: currentTab == index,
            current: currentTab,
            index: index,
            onTap: () => onTabSelected(index),
          );
        },
      ),
    );
  }
}
