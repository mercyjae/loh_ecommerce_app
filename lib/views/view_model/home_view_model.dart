import 'package:flutter/material.dart';
import 'package:loh_ecommerce_app/product_model.dart';
import 'package:loh_ecommerce_app/utils/softkey_focus.dart';
import 'package:loh_ecommerce_app/views/view_model/base_view_model.dart';

import '../../enum/filter_criteria.dart';
import '../../enum/view_state.dart';

class HomeViewModel extends BaseViewModel {
  String errorMessage = "";
  ViewState _state = ViewState.idle;
  FilterCriteria? currentFilterCriteria;
  Map<String, List<ProductModel>> filteredTabItems = {};
  final searchController = TextEditingController();
  bool criteriaSelected = false;
  bool isSearch = false;
  // int currentPage = 1;
  bool isLoadingMore = false;
  static const int itemsPerPage = 10;
  Map<String, int> currentPage = {};

  @override
  ViewState get viewState => _state;

  void setViewState(ViewState state) {
    _state = state;
    notifyListeners();
  }

  void setError(String error) {
    errorMessage = error;
    notifyListeners();
  }

  void showSearchField() {
    isSearch = true;
    notifyListeners();
  }

  void closeSearchField(BuildContext context, String currentTab) {
    isSearch = false;
    hideKeyboard(context);
    clearSearch(currentTab);
    notifyListeners();
  }

  void searchItems(String query, String currentTab) {
    if (query.isEmpty) {
      // If the search query is empty, show all items
      clearSearch(currentTab);
      return;
    }

    // Filter items based on the search query
    List<ProductModel> currentTabItems = List.from(productItems[currentTab] ?? []);
    List<ProductModel> filteredItems = currentTabItems
        .where((item) => item.title.toLowerCase().contains(query.toLowerCase()))
        .toList();

    filteredTabItems[currentTab] = filteredItems;
    notifyListeners();
  }

  void clearSearch(String currentTab) {
    // Reset the filtered items to show all items
    filteredTabItems[currentTab] = List.from(productItems[currentTab] ?? []);
    searchController.clear();
    notifyListeners();
  }

  void applyFilter(FilterCriteria criteria, String currentTab,
      Map<String, List<ProductModel>> tabItems) {
    criteriaSelected = true;
    currentFilterCriteria = criteria;

    // Filter or sort the items for the current tab
    List<ProductModel> currentTabItems = List.from(tabItems[currentTab] ?? []);

    // Apply sorting/filtering logic based on criteria
    switch (criteria) {
      case FilterCriteria.popularity:
        currentTabItems.sort((a, b) => a.popularity.compareTo(b.popularity));
        break;
      case FilterCriteria.newest:
        currentTabItems.sort((a, b) => a.newest.compareTo(b.newest));
        break;
      case FilterCriteria.review:
        currentTabItems.sort((a, b) => a.review.compareTo(b.review));
        break;
      case FilterCriteria.lowPrice:
        currentTabItems.sort((a, b) => a.price.compareTo(b.price));
        break;
      case FilterCriteria.highPrice:
        currentTabItems.sort((a, b) => a.price.compareTo(b.price));
        break;
      default:
        clearFilter();
        break;
    }

    // Store the filtered list in the map if criteria is selected
    if (criteriaSelected) {
      filteredTabItems[currentTab] = currentTabItems;
    }

    notifyListeners();
  }

  void clearFilter() {
    criteriaSelected = false;
    currentFilterCriteria = null;
    filteredTabItems.clear();
    notifyListeners();
  }

  void loadMoreItems(String currentTab) {
    if (isLoadingMore) return;

    isLoadingMore = true;
    notifyListeners();

    // Example: Fetch more items
    // Replace this with your actual data fetching logic
    fetchMoreData(currentTab).then((newItems) {
      if (newItems.isNotEmpty) {
        filteredTabItems[currentTab] = [
          ...?filteredTabItems[currentTab],
          ...newItems,
        ];
      }
      isLoadingMore = false;
      notifyListeners();
    }).catchError((error) {
      // Handle any errors here
      isLoadingMore = false;
      notifyListeners();
    });
  }

  Future<List<ProductModel>> fetchMoreData(String currentTab) async {
    // Simulate network delay
    await Future.delayed(const Duration(seconds: 2));

    // Initialize current page for the tab if not already set
    currentPage[currentTab] = currentPage[currentTab] ?? 1;

    // Calculate range of items to fetch
    int startIndex = (currentPage[currentTab]! - 1) * itemsPerPage;
    int endIndex = startIndex + itemsPerPage;

    // Fetch items for the current page
    List<ProductModel> allItems = productItems[currentTab] ?? [];
    List<ProductModel> fetchedItems = allItems.sublist(
        startIndex, endIndex <= allItems.length ? endIndex : allItems.length);

    // Increment the current page number for next fetch
    if (endIndex < allItems.length) {
      currentPage[currentTab] = currentPage[currentTab]! + 1;
    }

    return fetchedItems;
  }
}
