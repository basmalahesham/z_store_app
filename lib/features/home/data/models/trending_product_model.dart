class ProductModel {
  final String imageUrl;
  final String title;
  final String price;
  final String? description;
  final bool isOutOfStock;

  ProductModel({
    required this.imageUrl,
    required this.title,
    required this.price,
    this.isOutOfStock = false,
    this.description,
  });
}
