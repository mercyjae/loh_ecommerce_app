import 'package:loh_ecommerce_app/utils/enum/app_images.dart';

class ProductModel {
  final String title;
  final String imagePath;
  final String popularity;
  final String newest;
  final String review;
  final String price;

  ProductModel(
      this.title,
      this.imagePath,
      this.popularity,
      this.newest,
      this.review,
      this.price);
}

Map<String, List<ProductModel>> productItems = {
  "All": [
    ProductModel("Shoe 1", AppImage.shoe1, "popular", "new", "high", "high"),
    ProductModel("Shoe 2", AppImage.shoe2, "not-popular", "new", "low", "high"),
    ProductModel("Shoe 3", AppImage.shoe3, "popular", "new", "high", "high"),
    ProductModel("Bag 1", AppImage.bag1, "popular", "new", "high", "high"),
    ProductModel("Bag 2", AppImage.bag2, "popular", "not-new", "high", "high"),
    ProductModel("Bag 3", AppImage.bag3, "not-popular", "new", "high", "low"),
    ProductModel(
        "Eyeglass 1", AppImage.eyeglass1, "not-popular", "new", "high", "low"),
    ProductModel(
        "Eyeglass 2", AppImage.eyeglass2, "not-popular", "new", "high", "high"),
    ProductModel("Bag 4", AppImage.bag4, "not-popular", "new", "high", "high"),
    ProductModel("Shoe 4", AppImage.shoe4, "popular", "new", "low", "low"),
    ProductModel("Shoe 5", AppImage.shoe5, "popular", "new", "high", "high"),
    ProductModel("Bag 11", AppImage.bag11, "popular", "new", "high", "high"),
    ProductModel("Bag 12", AppImage.bag12, "popular", "not-new", "high", "high"),
    ProductModel("Bag 13", AppImage.bag13, "not-popular", "new", "high", "low"),
    ProductModel("Shoe 6", AppImage.shoe6, "not-popular", "new", "low", "high"),
    ProductModel("Shoe 7", AppImage.shoe7, "popular", "new", "low", "low"),
    ProductModel("Shoe 8", AppImage.shoe8, "not-popular", "new", "low", "high"),
    ProductModel(
        "Eyeglass 3", AppImage.eyeglass3, "popular", "not-new", "high", "high"),
    ProductModel(
        "Eyeglass 4", AppImage.eyeglass4, "popular", "new", "high", "high"),
    ProductModel(
        "Eyeglass 5", AppImage.eyeglass5, "not-popular", "new", "low", "high"),
    ProductModel("Eyeglass 6", AppImage.eyeglass6, "popular", "new", "low", "low"),
    ProductModel("Shoe 9", AppImage.shoe9, "popular", "new", "low", "low"),
    ProductModel("Shoe 10", AppImage.shoe10, "not-popular", "new", "high", "high"),
    ProductModel("Bag 7", AppImage.bag7, "not-popular", "new", "low", "high"),
    ProductModel("Bag 8", AppImage.bag8, "popular", "new", "low", "low"),
    ProductModel("Bag 9", AppImage.bag9, "not-popular", "new", "high", "high"),
    ProductModel("Bag 10", AppImage.bag10, "not-popular", "not-new", "high", "low"),
    ProductModel(
        "Shoe 11", AppImage.shoe11, "not-popular", "not-new", "high", "low"),
    ProductModel("Shoe 12", AppImage.shoe12, "popular", "new", "high", "high"),
    ProductModel("Shoe 13", AppImage.shoe13, "popular", "not-new", "high", "high"),
    ProductModel(
        "Eyeglass 7", AppImage.eyeglass7, "not-popular", "new", "high", "high"),
    ProductModel("Eyeglass 8", AppImage.eyeglass8, "not-popular", "not-new", "high",
        "low"),
    ProductModel("Bag 4", AppImage.bag4, "not-popular", "new", "high", "high"),
    ProductModel("Bag 5", AppImage.bag5, "popular", "not-new", "high", "high"),
    ProductModel("Bag 6", AppImage.bag6, "popular", "new", "high", "high"),
    // ProductModel(
    //     "Eyeglass 1", AppImage.eyeglass1, "not-popular", "new", "high", "low"),
    // ProductModel(
    //     "Eyeglass 2", AppImage.eyeglass2, "not-popular", "new", "high", "high"),
    // ProductModel(
    //     "Eyeglass 3", AppImage.eyeglass3, "popular", "not-new", "high", "high"),
    // ProductModel(
    //     "Eyeglass 4", AppImage.eyeglass4, "popular", "new", "high", "high"),
    // ProductModel(
    //     "Eyeglass 5", AppImage.eyeglass5, "not-popular", "new", "low", "high"),
    // ProductModel("Eyeglass 6", AppImage.eyeglass6, "popular", "new", "low", "low"),
    // ProductModel(
    //     "Eyeglass 7", AppImage.eyeglass7, "not-popular", "new", "high", "high"),
    // ProductModel("Eyeglass 8", AppImage.eyeglass8, "not-popular", "not-new", "high",
    //     "low"),
    // ProductModel("Bag 1", AppImage.bag1, "popular", "new", "high", "high"),
    // ProductModel("Bag 2", AppImage.bag2, "popular", "not-new", "high", "high"),
    // ProductModel("Bag 3", AppImage.bag3, "not-popular", "new", "high", "low"),
    // ProductModel("Bag 4", AppImage.bag4, "not-popular", "new", "high", "high"),
    // ProductModel("Bag 5", AppImage.bag5, "popular", "not-new", "high", "high"),
    // ProductModel("Bag 6", AppImage.bag6, "popular", "new", "high", "high"),
    // ProductModel("Bag 7", AppImage.bag7, "not-popular", "new", "low", "high"),
    // ProductModel("Bag 8", AppImage.bag8, "popular", "new", "low", "low"),
    // ProductModel("Bag 9", AppImage.bag9, "not-popular", "new", "high", "high"),
    // ProductModel("Bag 10", AppImage.bag10, "not-popular", "not-new", "high", "low"),
    // ProductModel("Bag 11", AppImage.bag11, "popular", "new", "high", "high"),
    // ProductModel("Bag 12", AppImage.bag12, "popular", "not-new", "high", "high"),
    // ProductModel("Bag 13", AppImage.bag13, "not-popular", "new", "high", "low"),
  ],
  "Bags": [
    ProductModel("Bag 1", AppImage.bag1, "popular", "new", "high", "high"),
    ProductModel("Bag 2", AppImage.bag2, "popular", "not-new", "high", "high"),
    ProductModel("Bag 3", AppImage.bag3, "not-popular", "new", "high", "low"),
    ProductModel("Bag 4", AppImage.bag4, "not-popular", "new", "high", "high"),
    ProductModel("Bag 5", AppImage.bag5, "popular", "not-new", "high", "high"),
    ProductModel("Bag 6", AppImage.bag6, "popular", "new", "high", "high"),
    ProductModel("Bag 7", AppImage.bag7, "not-popular", "new", "low", "high"),
    ProductModel("Bag 8", AppImage.bag8, "popular", "new", "low", "low"),
    ProductModel("Bag 9", AppImage.bag9, "not-popular", "new", "high", "high"),
    ProductModel("Bag 10", AppImage.bag10, "not-popular", "not-new", "high", "low"),
    ProductModel("Bag 11", AppImage.bag11, "popular", "new", "high", "high"),
    ProductModel("Bag 12", AppImage.bag12, "popular", "not-new", "high", "high"),
    ProductModel("Bag 13", AppImage.bag13, "not-popular", "new", "high", "low"),
    ProductModel("Bag 1", AppImage.bag1, "popular", "new", "high", "high"),
    ProductModel("Bag 2", AppImage.bag2, "popular", "not-new", "high", "high"),
    ProductModel("Bag 3", AppImage.bag3, "not-popular", "new", "high", "low"),
    ProductModel("Bag 4", AppImage.bag4, "not-popular", "new", "high", "high"),
    ProductModel("Bag 5", AppImage.bag5, "popular", "not-new", "high", "high"),
    ProductModel("Bag 6", AppImage.bag6, "popular", "new", "high", "high"),
    ProductModel("Bag 7", AppImage.bag7, "not-popular", "new", "low", "high"),
    ProductModel("Bag 8", AppImage.bag8, "popular", "new", "low", "low"),
    ProductModel("Bag 9", AppImage.bag9, "not-popular", "new", "high", "high"),
    ProductModel("Bag 10", AppImage.bag10, "not-popular", "not-new", "high", "low"),
    ProductModel("Bag 11", AppImage.bag11, "popular", "new", "high", "high"),
    ProductModel("Bag 12", AppImage.bag12, "popular", "not-new", "high", "high"),
    ProductModel("Bag 13", AppImage.bag13, "not-popular", "new", "high", "low"),
  ],
  "Shoes": [
    ProductModel("Shoe 1", AppImage.shoe1, "popular", "new", "high", "high"),
    ProductModel("Shoe 2", AppImage.shoe2, "not-popular", "new", "low", "high"),
    ProductModel("Shoe 3", AppImage.shoe3, "popular", "new", "high", "high"),
    ProductModel("Shoe 4", AppImage.shoe4, "popular", "new", "low", "low"),
    ProductModel("Shoe 5", AppImage.shoe5, "popular", "new", "high", "high"),
    ProductModel("Shoe 6", AppImage.shoe6, "not-popular", "new", "low", "high"),
    ProductModel("Shoe 7", AppImage.shoe7, "popular", "new", "low", "low"),
    ProductModel("Shoe 8", AppImage.shoe8, "not-popular", "new", "low", "high"),
    ProductModel("Shoe 9", AppImage.shoe9, "popular", "new", "low", "low"),
    ProductModel("Shoe 10", AppImage.shoe10, "not-popular", "new", "high", "high"),
    ProductModel(
        "Shoe 11", AppImage.shoe11, "not-popular", "not-new", "high", "low"),
    ProductModel("Shoe 12", AppImage.shoe12, "popular", "new", "high", "high"),
    ProductModel("Shoe 13", AppImage.shoe13, "popular", "not-new", "high", "high"),
    ProductModel("Shoe 1", AppImage.shoe1, "popular", "new", "high", "high"),
    ProductModel("Shoe 2", AppImage.shoe2, "not-popular", "new", "low", "high"),
    ProductModel("Shoe 3", AppImage.shoe3, "popular", "new", "high", "high"),
    ProductModel("Shoe 4", AppImage.shoe4, "popular", "new", "low", "low"),
    ProductModel("Shoe 5", AppImage.shoe5, "popular", "new", "high", "high"),
    ProductModel("Shoe 6", AppImage.shoe6, "not-popular", "new", "low", "high"),
    ProductModel("Shoe 7", AppImage.shoe7, "popular", "new", "low", "low"),
    ProductModel("Shoe 8", AppImage.shoe8, "not-popular", "new", "low", "high"),
    ProductModel("Shoe 9", AppImage.shoe9, "popular", "new", "low", "low"),
    ProductModel("Shoe 10", AppImage.shoe10, "not-popular", "new", "high", "high"),
    ProductModel(
        "Shoe 11", AppImage.shoe11, "not-popular", "not-new", "high", "low"),
    ProductModel("Shoe 12", AppImage.shoe12, "popular", "new", "high", "high"),
    ProductModel("Shoe 13", AppImage.shoe13, "popular", "not-new", "high", "high"),
  ],
  "Eyeglasses": [
    ProductModel(
        "Eyeglass 1", AppImage.eyeglass1, "not-popular", "new", "high", "low"),
    ProductModel(
        "Eyeglass 2", AppImage.eyeglass2, "not-popular", "new", "high", "high"),
    ProductModel(
        "Eyeglass 3", AppImage.eyeglass3, "popular", "not-new", "high", "high"),
    ProductModel(
        "Eyeglass 4", AppImage.eyeglass4, "popular", "new", "high", "high"),
    ProductModel(
        "Eyeglass 5", AppImage.eyeglass5, "not-popular", "new", "low", "high"),
    ProductModel("Eyeglass 6", AppImage.eyeglass6, "popular", "new", "low", "low"),
    ProductModel(
        "Eyeglass 7", AppImage.eyeglass7, "not-popular", "new", "high", "high"),
    ProductModel("Eyeglass 8", AppImage.eyeglass8, "not-popular", "not-new", "high",
        "low"),
    ProductModel(
        "Eyeglass 1", AppImage.eyeglass1, "not-popular", "new", "high", "low"),
    ProductModel(
        "Eyeglass 2", AppImage.eyeglass2, "not-popular", "new", "high", "high"),
    ProductModel(
        "Eyeglass 3", AppImage.eyeglass3, "popular", "not-new", "high", "high"),
    ProductModel(
        "Eyeglass 4", AppImage.eyeglass4, "popular", "new", "high", "high"),
    ProductModel(
        "Eyeglass 5", AppImage.eyeglass5, "not-popular", "new", "low", "high"),
    ProductModel("Eyeglass 6", AppImage.eyeglass6, "popular", "new", "low", "low"),
    ProductModel(
        "Eyeglass 7", AppImage.eyeglass7, "not-popular", "new", "high", "high"),
    ProductModel("Eyeglass 8", AppImage.eyeglass8, "not-popular", "not-new", "high",
        "low"),
  ],
};
