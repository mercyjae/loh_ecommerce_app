import 'package:flutter/material.dart';

import 'package:loh_ecommerce_app/feature/model/product_model.dart';

class TabContentScreen extends StatelessWidget {
  final String tabName;
  final bool criteriaSelected;
  final Map<String, List<ProductModel>> filteredTabItems;
  final ScrollController scrollController;

  const TabContentScreen({
    Key? key,
    required this.tabName,
    required this.criteriaSelected,
    required this.filteredTabItems,
    required this.scrollController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<ProductModel> itemsToShow =
        criteriaSelected && filteredTabItems.containsKey(tabName)
            ? filteredTabItems[tabName]!
            : productItems[tabName] ?? [];

    return GridView.builder(
      controller: scrollController,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisExtent: 200,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 4.0,
      ),
      itemCount: itemsToShow.length,
      itemBuilder: (context, index) {
        final item = itemsToShow[index];
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // decoration: BoxDecoration(
              //   borderRadius: BorderRadius.circular(20),
              //   color: Colors.blue,
              //      border: Border.all(width: 2)
              //     ),
              height: 150,
              width: double.infinity,
              child: Image.asset(
                item.imagePath,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  item.title,
                  style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.bold),
                ),
                const Text(
                  '\$200',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
