import 'package:loh_ecommerce_app/core/utils/app_images.dart';

class ProductModel {
  final String title; final String amount;

  final String imagePath;
  final String popularity;
  final String newest;
  final String review;
  final String price;
 

  ProductModel(this.title,this.amount, this.imagePath, this.popularity, this.newest,
      this.review, this.price, );
}

Map<String, List<ProductModel>> productItems = {
  "All": [
    ProductModel(
        "Shoe 1", "200", AppImage.shoe1, "popular", "new", "high", "high"),
    ProductModel(
        "Shoe 2", "110", AppImage.shoe2, "not-popular", "new", "low", "high"),
    ProductModel(
        "Shoe 3", "450", AppImage.shoe3, "popular", "new", "high", "high"),
    ProductModel(
        "Bag 1", "800", AppImage.bag1, "popular", "new", "high", "high"),
    ProductModel(
        "Bag 2", "320", AppImage.bag2, "popular", "not-new", "high", "high"),
    ProductModel(
        "Bag 3", "900", AppImage.bag3, "not-popular", "new", "high", "low"),
    ProductModel("Eyeglass 1", "250", AppImage.eyeglass1, "not-popular", "new",
        "high", "low"),
    ProductModel("Eyeglass 2", "200", AppImage.eyeglass2, "not-popular", "new",
        "high", "high"),
    ProductModel(
        "Bag 4", "400", AppImage.bag4, "not-popular", "new", "high", "high"),
    ProductModel(
        "Shoe 4", "350", AppImage.shoe4, "popular", "new", "low", "low"),
    ProductModel(
        "Shoe 5", "700", AppImage.shoe5, "popular", "new", "high", "high"),
    ProductModel(
        "Bag 11", "950", AppImage.bag11, "popular", "new", "high", "high"),
    ProductModel(
        "Bag 12", "250", AppImage.bag12, "popular", "not-new", "high", "high"),
    ProductModel(
        "Bag 13", "200", AppImage.bag13, "not-popular", "new", "high", "low"),
    ProductModel(
        "Shoe 6", "100", AppImage.shoe6, "not-popular", "new", "low", "high"),
    ProductModel(
        "Shoe 7", "300", AppImage.shoe7, "popular", "new", "low", "low"),
    ProductModel(
        "Shoe 8", "200", AppImage.shoe8, "not-popular", "new", "low", "high"),
    ProductModel("Eyeglass 3", "900", AppImage.eyeglass3, "popular", "not-new",
        "high", "high"),
    ProductModel("Eyeglass 4", "700", AppImage.eyeglass4, "popular", "new",
        "high", "high"),
    ProductModel("Eyeglass 5", "300", AppImage.eyeglass5, "not-popular", "new",
        "low", "high"),
    ProductModel("Eyeglass 6", "250", AppImage.eyeglass6, "popular", "new",
        "low", "low"),
    ProductModel(
        "Shoe 9", "600", AppImage.shoe9, "popular", "new", "low", "low"),
    ProductModel("Shoe 10", "900", AppImage.shoe10, "not-popular", "new",
        "high", "high"),
    ProductModel(
        "Bag 7", "150", AppImage.bag7, "not-popular", "new", "low", "high"),
    ProductModel("Bag 8", "800", AppImage.bag8, "popular", "new", "low", "low"),
    ProductModel(
        "Bag 9", "200", AppImage.bag9, "not-popular", "new", "high", "high"),
    ProductModel("Bag 10", "600", AppImage.bag10, "not-popular", "not-new",
        "high", "low"),
    ProductModel("Shoe 11", "200", AppImage.shoe11, "not-popular", "not-new",
        "high", "low"),
    ProductModel(
        "Shoe 12", "200", AppImage.shoe12, "popular", "new", "high", "high"),
    ProductModel("Shoe 13", "250", AppImage.shoe13, "popular", "not-new",
        "high", "high"),
    ProductModel("Eyeglass 7", "150", AppImage.eyeglass7, "not-popular", "new",
        "high", "high"),
    ProductModel("Eyeglass 8", "600", AppImage.eyeglass8, "not-popular",
        "not-new", "high", "low"),
    ProductModel(
        "Bag 4", "700", AppImage.bag4, "not-popular", "new", "high", "high"),
    ProductModel(
        "Bag 5", "900", AppImage.bag5, "popular", "not-new", "high", "high"),
    ProductModel(
        "Bag 6", "150", AppImage.bag6, "popular", "new", "high", "high"),
  ],
  "Bags": [
    ProductModel(
        "Bag 1", "400", AppImage.bag1, "popular", "new", "high", "high"),
    ProductModel(
        "Bag 2", "550", AppImage.bag2, "popular", "not-new", "high", "high"),
    ProductModel(
        "Bag 3", "700", AppImage.bag3, "not-popular", "new", "high", "low"),
    ProductModel(
        "Bag 4", "800", AppImage.bag4, "not-popular", "new", "high", "high"),
    ProductModel(
        "Bag 5", "400", AppImage.bag5, "popular", "not-new", "high", "high"),
    ProductModel(
        "Bag 6", "300", AppImage.bag6, "popular", "new", "high", "high"),
    ProductModel(
        "Bag 7", "250", AppImage.bag7, "not-popular", "new", "low", "high"),
    ProductModel("Bag 8", "200", AppImage.bag8, "popular", "new", "low", "low"),
    ProductModel(
        "Bag 9", "280", AppImage.bag9, "not-popular", "new", "high", "high"),
    ProductModel("Bag 10", "200", AppImage.bag10, "not-popular", "not-new",
        "high", "low"),
    ProductModel(
        "Bag 11", "560", AppImage.bag11, "popular", "new", "high", "high"),
    ProductModel(
        "Bag 12", "780", AppImage.bag12, "popular", "not-new", "high", "high"),
    ProductModel(
        "Bag 13", "910", AppImage.bag13, "not-popular", "new", "high", "low"),
    ProductModel(
        "Bag 1", "230", AppImage.bag1, "popular", "new", "high", "high"),
    ProductModel(
        "Bag 2", "270", AppImage.bag2, "popular", "not-new", "high", "high"),
    ProductModel(
        "Bag 3", "650", AppImage.bag3, "not-popular", "new", "high", "low"),
    ProductModel(
        "Bag 4", "340", AppImage.bag4, "not-popular", "new", "high", "high"),
    ProductModel(
        "Bag 5", "230", AppImage.bag5, "popular", "not-new", "high", "high"),
    ProductModel(
        "Bag 6", "290", AppImage.bag6, "popular", "new", "high", "high"),
    ProductModel(
        "Bag 7", "700", AppImage.bag7, "not-popular", "new", "low", "high"),
    ProductModel("Bag 8", "200", AppImage.bag8, "popular", "new", "low", "low"),
    ProductModel(
        "Bag 9", "300", AppImage.bag9, "not-popular", "new", "high", "high"),
    ProductModel("Bag 10", "550", AppImage.bag10, "not-popular", "not-new",
        "high", "low"),
    ProductModel(
        "Bag 11", "760", AppImage.bag11, "popular", "new", "high", "high"),
    ProductModel(
        "Bag 12", "850", AppImage.bag12, "popular", "not-new", "high", "high"),
    ProductModel(
        "Bag 13", "950", AppImage.bag13, "not-popular", "new", "high", "low"),
  ],
  "Shoes": [
    ProductModel(
        "Shoe 1", "350", AppImage.shoe1, "popular", "new", "high", "high"),
    ProductModel(
        "Shoe 2", "950", AppImage.shoe2, "not-popular", "new", "low", "high"),
    ProductModel(
        "Shoe 3", "750", AppImage.shoe3, "popular", "new", "high", "high"),
    ProductModel(
        "Shoe 4", "850", AppImage.shoe4, "popular", "new", "low", "low"),
    ProductModel(
        "Shoe 5", "970", AppImage.shoe5, "popular", "new", "high", "high"),
    ProductModel(
        "Shoe 6", "350", AppImage.shoe6, "not-popular", "new", "low", "high"),
    ProductModel(
        "Shoe 7", "550", AppImage.shoe7, "popular", "new", "low", "low"),
    ProductModel(
        "Shoe 8", "230", AppImage.shoe8, "not-popular", "new", "low", "high"),
    ProductModel(
        "Shoe 9", "250", AppImage.shoe9, "popular", "new", "low", "low"),
    ProductModel("Shoe 10", "950", AppImage.shoe10, "not-popular", "new",
        "high", "high"),
    ProductModel("Shoe 11", "750", AppImage.shoe11, "not-popular", "not-new",
        "high", "low"),
    ProductModel(
        "Shoe 12", "200", AppImage.shoe12, "popular", "new", "high", "high"),
    ProductModel("Shoe 13", "450", AppImage.shoe13, "popular", "not-new",
        "high", "high"),
    ProductModel(
        "Shoe 1", "550", AppImage.shoe1, "popular", "new", "high", "high"),
    ProductModel(
        "Shoe 2", "310", AppImage.shoe2, "not-popular", "new", "low", "high"),
    ProductModel(
        "Shoe 3", "480", AppImage.shoe3, "popular", "new", "high", "high"),
    ProductModel(
        "Shoe 4", "230", AppImage.shoe4, "popular", "new", "low", "low"),
    ProductModel(
        "Shoe 5", "450", AppImage.shoe5, "popular", "new", "high", "high"),
    ProductModel(
        "Shoe 6", "800", AppImage.shoe6, "not-popular", "new", "low", "high"),
    ProductModel(
        "Shoe 7", "850", AppImage.shoe7, "popular", "new", "low", "low"),
    ProductModel(
        "Shoe 8", "900", AppImage.shoe8, "not-popular", "new", "low", "high"),
    ProductModel(
        "Shoe 9", "360", AppImage.shoe9, "popular", "new", "low", "low"),
    ProductModel("Shoe 10", "650", AppImage.shoe10, "not-popular", "new",
        "high", "high"),
    ProductModel("Shoe 11", "700", AppImage.shoe11, "not-popular", "not-new",
        "high", "low"),
    ProductModel(
        "Shoe 12", "800", AppImage.shoe12, "popular", "new", "high", "high"),
    ProductModel("Shoe 13", "230", AppImage.shoe13, "popular", "not-new",
        "high", "high"),
  ],
  "Eyeglasses": [
    ProductModel("Eyeglass 1", "280", AppImage.eyeglass1, "not-popular", "new",
        "high", "low"),
    ProductModel("Eyeglass 2", "300", AppImage.eyeglass2, "not-popular", "new",
        "high", "high"),
    ProductModel("Eyeglass 3", "350", AppImage.eyeglass3, "popular", "not-new",
        "high", "high"),
    ProductModel("Eyeglass 4", "250", AppImage.eyeglass4, "popular", "new",
        "high", "high"),
    ProductModel("Eyeglass 5", "290", AppImage.eyeglass5, "not-popular", "new",
        "low", "high"),
    ProductModel("Eyeglass 6", "660", AppImage.eyeglass6, "popular", "new",
        "low", "low"),
    ProductModel("Eyeglass 7", "750", AppImage.eyeglass7, "not-popular", "new",
        "high", "high"),
    ProductModel("Eyeglass 8", "650", AppImage.eyeglass8, "not-popular",
        "not-new", "high", "low"),
    ProductModel("Eyeglass 1", "450", AppImage.eyeglass1, "not-popular", "new",
        "high", "low"),
    ProductModel("Eyeglass 2", "950", AppImage.eyeglass2, "not-popular", "new",
        "high", "high"),
    ProductModel("Eyeglass 3", "850", AppImage.eyeglass3, "popular", "not-new",
        "high", "high"),
    ProductModel("Eyeglass 4", "750", AppImage.eyeglass4, "popular", "new",
        "high", "high"),
    ProductModel("Eyeglass 5", "320", AppImage.eyeglass5, "not-popular", "new",
        "low", "high"),
    ProductModel("Eyeglass 6", "120", AppImage.eyeglass6, "popular", "new",
        "low", "low"),
    ProductModel("Eyeglass 7", "970", AppImage.eyeglass7, "not-popular", "new",
        "high", "high"),
    ProductModel("Eyeglass","850", AppImage.eyeglass8, "not-popular", "not-new",
        "high", "low"),
  ],
};
