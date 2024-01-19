import 'package:loh_ecommerce_app/app_images.dart';
import 'package:loh_ecommerce_app/list_item.dart';

Map<String, List<ListItem>> tabItems = {
  "All": [
    ListItem("Shoe 1", AppImage.shoe1, "popular", "new", "high", "high"),
    ListItem("Shoe 2", AppImage.shoe2, "not-popular", "new", "low", "high"),
    ListItem("Shoe 3", AppImage.shoe3, "popular", "new", "high", "high"),
    ListItem("Bag 1", AppImage.bag1, "popular", "new", "high", "high"),
    ListItem("Bag 2", AppImage.bag2, "popular", "not-new", "high", "high"),
    ListItem("Bag 3", AppImage.bag3, "not-popular", "new", "high", "low"),
    ListItem(
        "Eyeglass 1", AppImage.eyeglass1, "not-popular", "new", "high", "low"),
    ListItem(
        "Eyeglass 2", AppImage.eyeglass2, "not-popular", "new", "high", "high"),
    ListItem("Bag 4", AppImage.bag4, "not-popular", "new", "high", "high"),
    ListItem("Shoe 4", AppImage.shoe4, "popular", "new", "low", "low"),
    ListItem("Shoe 5", AppImage.shoe5, "popular", "new", "high", "high"),
    ListItem("Bag 11", AppImage.bag11, "popular", "new", "high", "high"),
    ListItem("Bag 12", AppImage.bag12, "popular", "not-new", "high", "high"),
    ListItem("Bag 13", AppImage.bag13, "not-popular", "new", "high", "low"),
    ListItem("Shoe 6", AppImage.shoe6, "not-popular", "new", "low", "high"),
    ListItem("Shoe 7", AppImage.shoe7, "popular", "new", "low", "low"),
    ListItem("Shoe 8", AppImage.shoe8, "not-popular", "new", "low", "high"),
    ListItem(
        "Eyeglass 3", AppImage.eyeglass3, "popular", "not-new", "high", "high"),
    ListItem(
        "Eyeglass 4", AppImage.eyeglass4, "popular", "new", "high", "high"),
    ListItem(
        "Eyeglass 5", AppImage.eyeglass5, "not-popular", "new", "low", "high"),
    ListItem("Eyeglass 6", AppImage.eyeglass6, "popular", "new", "low", "low"),
    ListItem("Shoe 9", AppImage.shoe9, "popular", "new", "low", "low"),
    ListItem("Shoe 10", AppImage.shoe10, "not-popular", "new", "high", "high"),
    ListItem("Bag 7", AppImage.bag7, "not-popular", "new", "low", "high"),
    ListItem("Bag 8", AppImage.bag8, "popular", "new", "low", "low"),
    ListItem("Bag 9", AppImage.bag9, "not-popular", "new", "high", "high"),
    ListItem("Bag 10", AppImage.bag10, "not-popular", "not-new", "high", "low"),
    ListItem(
        "Shoe 11", AppImage.shoe11, "not-popular", "not-new", "high", "low"),
    ListItem("Shoe 12", AppImage.shoe12, "popular", "new", "high", "high"),
    ListItem("Shoe 13", AppImage.shoe13, "popular", "not-new", "high", "high"),
    ListItem(
        "Eyeglass 7", AppImage.eyeglass7, "not-popular", "new", "high", "high"),
    ListItem("Eyeglass 8", AppImage.eyeglass8, "not-popular", "not-new", "high",
        "low"),
    ListItem("Bag 4", AppImage.bag4, "not-popular", "new", "high", "high"),
    ListItem("Bag 5", AppImage.bag5, "popular", "not-new", "high", "high"),
    ListItem("Bag 6", AppImage.bag6, "popular", "new", "high", "high"),
    // ListItem(
    //     "Eyeglass 1", AppImage.eyeglass1, "not-popular", "new", "high", "low"),
    // ListItem(
    //     "Eyeglass 2", AppImage.eyeglass2, "not-popular", "new", "high", "high"),
    // ListItem(
    //     "Eyeglass 3", AppImage.eyeglass3, "popular", "not-new", "high", "high"),
    // ListItem(
    //     "Eyeglass 4", AppImage.eyeglass4, "popular", "new", "high", "high"),
    // ListItem(
    //     "Eyeglass 5", AppImage.eyeglass5, "not-popular", "new", "low", "high"),
    // ListItem("Eyeglass 6", AppImage.eyeglass6, "popular", "new", "low", "low"),
    // ListItem(
    //     "Eyeglass 7", AppImage.eyeglass7, "not-popular", "new", "high", "high"),
    // ListItem("Eyeglass 8", AppImage.eyeglass8, "not-popular", "not-new", "high",
    //     "low"),
    // ListItem("Bag 1", AppImage.bag1, "popular", "new", "high", "high"),
    // ListItem("Bag 2", AppImage.bag2, "popular", "not-new", "high", "high"),
    // ListItem("Bag 3", AppImage.bag3, "not-popular", "new", "high", "low"),
    // ListItem("Bag 4", AppImage.bag4, "not-popular", "new", "high", "high"),
    // ListItem("Bag 5", AppImage.bag5, "popular", "not-new", "high", "high"),
    // ListItem("Bag 6", AppImage.bag6, "popular", "new", "high", "high"),
    // ListItem("Bag 7", AppImage.bag7, "not-popular", "new", "low", "high"),
    // ListItem("Bag 8", AppImage.bag8, "popular", "new", "low", "low"),
    // ListItem("Bag 9", AppImage.bag9, "not-popular", "new", "high", "high"),
    // ListItem("Bag 10", AppImage.bag10, "not-popular", "not-new", "high", "low"),
    // ListItem("Bag 11", AppImage.bag11, "popular", "new", "high", "high"),
    // ListItem("Bag 12", AppImage.bag12, "popular", "not-new", "high", "high"),
    // ListItem("Bag 13", AppImage.bag13, "not-popular", "new", "high", "low"),
  ],
  "Bags": [
    ListItem("Bag 1", AppImage.bag1, "popular", "new", "high", "high"),
    ListItem("Bag 2", AppImage.bag2, "popular", "not-new", "high", "high"),
    ListItem("Bag 3", AppImage.bag3, "not-popular", "new", "high", "low"),
    ListItem("Bag 4", AppImage.bag4, "not-popular", "new", "high", "high"),
    ListItem("Bag 5", AppImage.bag5, "popular", "not-new", "high", "high"),
    ListItem("Bag 6", AppImage.bag6, "popular", "new", "high", "high"),
    ListItem("Bag 7", AppImage.bag7, "not-popular", "new", "low", "high"),
    ListItem("Bag 8", AppImage.bag8, "popular", "new", "low", "low"),
    ListItem("Bag 9", AppImage.bag9, "not-popular", "new", "high", "high"),
    ListItem("Bag 10", AppImage.bag10, "not-popular", "not-new", "high", "low"),
    ListItem("Bag 11", AppImage.bag11, "popular", "new", "high", "high"),
    ListItem("Bag 12", AppImage.bag12, "popular", "not-new", "high", "high"),
    ListItem("Bag 13", AppImage.bag13, "not-popular", "new", "high", "low"),
    ListItem("Bag 1", AppImage.bag1, "popular", "new", "high", "high"),
    ListItem("Bag 2", AppImage.bag2, "popular", "not-new", "high", "high"),
    ListItem("Bag 3", AppImage.bag3, "not-popular", "new", "high", "low"),
    ListItem("Bag 4", AppImage.bag4, "not-popular", "new", "high", "high"),
    ListItem("Bag 5", AppImage.bag5, "popular", "not-new", "high", "high"),
    ListItem("Bag 6", AppImage.bag6, "popular", "new", "high", "high"),
    ListItem("Bag 7", AppImage.bag7, "not-popular", "new", "low", "high"),
    ListItem("Bag 8", AppImage.bag8, "popular", "new", "low", "low"),
    ListItem("Bag 9", AppImage.bag9, "not-popular", "new", "high", "high"),
    ListItem("Bag 10", AppImage.bag10, "not-popular", "not-new", "high", "low"),
    ListItem("Bag 11", AppImage.bag11, "popular", "new", "high", "high"),
    ListItem("Bag 12", AppImage.bag12, "popular", "not-new", "high", "high"),
    ListItem("Bag 13", AppImage.bag13, "not-popular", "new", "high", "low"),
  ],
  "Shoes": [
    ListItem("Shoe 1", AppImage.shoe1, "popular", "new", "high", "high"),
    ListItem("Shoe 2", AppImage.shoe2, "not-popular", "new", "low", "high"),
    ListItem("Shoe 3", AppImage.shoe3, "popular", "new", "high", "high"),
    ListItem("Shoe 4", AppImage.shoe4, "popular", "new", "low", "low"),
    ListItem("Shoe 5", AppImage.shoe5, "popular", "new", "high", "high"),
    ListItem("Shoe 6", AppImage.shoe6, "not-popular", "new", "low", "high"),
    ListItem("Shoe 7", AppImage.shoe7, "popular", "new", "low", "low"),
    ListItem("Shoe 8", AppImage.shoe8, "not-popular", "new", "low", "high"),
    ListItem("Shoe 9", AppImage.shoe9, "popular", "new", "low", "low"),
    ListItem("Shoe 10", AppImage.shoe10, "not-popular", "new", "high", "high"),
    ListItem(
        "Shoe 11", AppImage.shoe11, "not-popular", "not-new", "high", "low"),
    ListItem("Shoe 12", AppImage.shoe12, "popular", "new", "high", "high"),
    ListItem("Shoe 13", AppImage.shoe13, "popular", "not-new", "high", "high"),
    ListItem("Shoe 1", AppImage.shoe1, "popular", "new", "high", "high"),
    ListItem("Shoe 2", AppImage.shoe2, "not-popular", "new", "low", "high"),
    ListItem("Shoe 3", AppImage.shoe3, "popular", "new", "high", "high"),
    ListItem("Shoe 4", AppImage.shoe4, "popular", "new", "low", "low"),
    ListItem("Shoe 5", AppImage.shoe5, "popular", "new", "high", "high"),
    ListItem("Shoe 6", AppImage.shoe6, "not-popular", "new", "low", "high"),
    ListItem("Shoe 7", AppImage.shoe7, "popular", "new", "low", "low"),
    ListItem("Shoe 8", AppImage.shoe8, "not-popular", "new", "low", "high"),
    ListItem("Shoe 9", AppImage.shoe9, "popular", "new", "low", "low"),
    ListItem("Shoe 10", AppImage.shoe10, "not-popular", "new", "high", "high"),
    ListItem(
        "Shoe 11", AppImage.shoe11, "not-popular", "not-new", "high", "low"),
    ListItem("Shoe 12", AppImage.shoe12, "popular", "new", "high", "high"),
    ListItem("Shoe 13", AppImage.shoe13, "popular", "not-new", "high", "high"),
  ],
  "Eyeglasses": [
    ListItem(
        "Eyeglass 1", AppImage.eyeglass1, "not-popular", "new", "high", "low"),
    ListItem(
        "Eyeglass 2", AppImage.eyeglass2, "not-popular", "new", "high", "high"),
    ListItem(
        "Eyeglass 3", AppImage.eyeglass3, "popular", "not-new", "high", "high"),
    ListItem(
        "Eyeglass 4", AppImage.eyeglass4, "popular", "new", "high", "high"),
    ListItem(
        "Eyeglass 5", AppImage.eyeglass5, "not-popular", "new", "low", "high"),
    ListItem("Eyeglass 6", AppImage.eyeglass6, "popular", "new", "low", "low"),
    ListItem(
        "Eyeglass 7", AppImage.eyeglass7, "not-popular", "new", "high", "high"),
    ListItem("Eyeglass 8", AppImage.eyeglass8, "not-popular", "not-new", "high",
        "low"),
    ListItem(
        "Eyeglass 1", AppImage.eyeglass1, "not-popular", "new", "high", "low"),
    ListItem(
        "Eyeglass 2", AppImage.eyeglass2, "not-popular", "new", "high", "high"),
    ListItem(
        "Eyeglass 3", AppImage.eyeglass3, "popular", "not-new", "high", "high"),
    ListItem(
        "Eyeglass 4", AppImage.eyeglass4, "popular", "new", "high", "high"),
    ListItem(
        "Eyeglass 5", AppImage.eyeglass5, "not-popular", "new", "low", "high"),
    ListItem("Eyeglass 6", AppImage.eyeglass6, "popular", "new", "low", "low"),
    ListItem(
        "Eyeglass 7", AppImage.eyeglass7, "not-popular", "new", "high", "high"),
    ListItem("Eyeglass 8", AppImage.eyeglass8, "not-popular", "not-new", "high",
        "low"),
  ],
};
