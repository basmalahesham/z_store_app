class TrendingProductModel {
  final String imageUrl;
  final String title;
  final String price;
  final bool isOutOfStock;

  TrendingProductModel({
    required this.imageUrl,
    required this.title,
    required this.price,
    this.isOutOfStock = false,
  });
}
