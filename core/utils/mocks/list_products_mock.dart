import '../../../data/models/product_model.dart';

List<ProductModel> generateProducts() {
  return [
    ProductModel(1, "assets/App12/shoes_1.png", "Creter Impact", "Men's Shoes",
        "men shoes", 99.56),
    ProductModel(2, "assets/App12/shoes_2.png", "Air - Max Pre Day", "Men's Shoes",
        "men shoes", 137.56),
    ProductModel(3, "assets/App12/shoes_3.png", "Air Max 51", "Men's Shoes",
        "men shoes", 99.56),
    ProductModel(4, "assets/App12/shoes_4.png", "EM Shoes", "Men's Shoes",
        "men shoes", 212.56),
  ];
}

List<ProductModel> generateCategories() {
  return [
    ProductModel(1, "assets/App12/shoes_1.png", "Lifestyle", "Men's Shoes",
        "men shoes", 99.56),
    ProductModel(2, "assets/App12/shoes_2.png", "Basketball", "Men's Shoes",
        "men shoes", 137.56),
    ProductModel(
        3, "assets/App12/shoes_3.png", "Running", "Men's Shoes", "men shoes", 99.56),
    ProductModel(
        4, "assets/App12/shoes_4.png", "Rugby", "Men's Shoes", "men shoes", 212.56),
  ];
}
