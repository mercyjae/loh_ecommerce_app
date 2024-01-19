import 'package:flutter/material.dart';
import 'package:loh_ecommerce_app/product_model.dart';
import 'package:loh_ecommerce_app/views/components/search_bar.dart';
import 'package:loh_ecommerce_app/views/components/tab_chips_view.dart';
import 'package:loh_ecommerce_app/views/components/content_vew.dart';
import 'package:loh_ecommerce_app/views/view_model/home_view_model.dart';
import 'package:loh_ecommerce_app/views/view_model/base_view.dart';
import 'package:provider/provider.dart';

import 'filter_bottom_sheet_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  late ScrollController _scrollController;

  bool hasFocus = false;
  int current = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
        initialIndex: 0, length: productItems.keys.length, vsync: this);

    _tabController?.animation?.addListener(() {
      if (!mounted) return;
      final int? tabIndex = _tabController?.animation?.value.round();
      if (tabIndex != null && tabIndex != current) {
        setState(() {
          current = tabIndex;
        });
      }
    });

    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
  }

  void _scrollListener() {
    if (_scrollController.position.pixels ==
        _scrollController.position.maxScrollExtent) {
      // Load more items
      String currentTab = productItems.keys.elementAt(current);
      context.read<HomeViewModel>().loadMoreItems(currentTab);
    }
  }

  @override
  void dispose() {
    _tabController?.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BaseView<HomeViewModel>(
        onModelReady: (model) {},
        builder: (context, model, child) {
          String currentTab = productItems.keys.elementAt(current);

          return Scaffold(
            appBar: AppBar(
              // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
              title: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    child: Text("Ecommerce App"),
                  ),
                  const Spacer(),
                  InkWell(
                      onTap: () {
                        model.showSearchField();
                      },
                      child: const Icon(Icons.search)),
                  const SizedBox(
                    width: 10,
                  ),
                  const Divider(),
                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return const FilterBottomSheet();
                        },
                      ).then((selectedFilter) {
                        if (selectedFilter != null) {
                          model.applyFilter(
                              selectedFilter, currentTab, productItems);
                        }
                      });
                    },
                    child: const Icon(Icons.filter_list),
                  )
                ],
              ),
            ),
            body: Container(
              margin: const EdgeInsets.all(10),
              width: double.infinity,
              height: double.infinity,
              child: Column(
                children: [
                  AppSearchBar(
                    searchController: model.searchController,
                     isVisible: model.isSearch,
                    onSearchChanged: (value) {
                      model.searchItems(value, currentTab);
                    },
                    onClearQuery: () {
                      model.clearSearch(currentTab);
                    },
                    onCloseSearch: () {
                      model.closeSearchField(context, currentTab);
                    },
                    currentTab: currentTab,
                  ),
                  TabChipsView(
                    tabController: _tabController!,
                    currentTab: current,
                    onTabSelected: (index) {
                      setState(() {
                        current = index;
                      });
                      _tabController?.animateTo(index);
                    },
                  ),
                  Expanded(
                    child: TabBarView(
                      controller: _tabController,
                      children: productItems.keys.map((tabName) {
                        return TabContentScreen(
                          tabName: tabName,
                          scrollController: _scrollController,
                          criteriaSelected:
                              model.criteriaSelected || model.isSearch,
                          filteredTabItems: model.filteredTabItems,
                        );
                      }).toList(),
                    ),
                  )
                ],
              ),
            ),
            floatingActionButton: Visibility(
              visible: model.criteriaSelected == true,
              child: FloatingActionButton(
                elevation: 8,
                onPressed: () {
                  model.clearFilter();
                },
                backgroundColor: Colors.blue,
                child: const Text(
                  'Clear Filter',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16.0, color: Colors.white),
                ),
              ),
            ),
          );
        });
  }
}
