class ProductModel {
  String productName;
  String productPrice;
  String productImage;
  String productDescription;
  String productQuantity;

  ProductModel(this.productName, this.productPrice, this.productImage,
      this.productDescription, this.productQuantity);
}

// "Hendrix",
// "Foreign Falcon",
// "Jim & Jago",
// "Jelly Kelly",
// "Modern Walk",
// "Apparel 360",

List<ProductModel> products() {
  List<ProductModel> productList = [];

  productList.add(ProductModel("Cloth", "200", './images/1.png',
      "Men beautiful jacket, tops, shirts and T-shirt are available", "5"));
  productList.add(ProductModel("Jacket", "230", './images/2.png',
      "Men beautiful jacket, tops, shirts and T-shirt are available", "5"));
  productList.add(ProductModel("Dress Shirt", "150", './images/3.png',
      "Men beautiful jacket, tops, shirts and T-shirt are available", "5"));
  productList.add(ProductModel("T-Shirt", "190", './images/4.png',
      "Men beautiful jacket, tops, shirts and T-shirt are available", "5"));
  productList.add(ProductModel("Tops", "150", './images/5.png',
      "Men beautiful jacket, tops, shirts and T-shirt are available", "5"));
  productList.add(ProductModel("Shoes", "130", './images/6.png',
      "Men beautiful jacket, tops, shirts and T-shirt are available", "5"));
  productList.add(ProductModel("Wingtip ", "300", './images/7.png',
      "Men beautiful jacket, tops, shirts and T-shirt are available", "5"));

  return productList;
}

List<ProductModel> addtoCart() {
  List<ProductModel> carted = [];
  return carted;
}
