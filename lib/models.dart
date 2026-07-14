class BrandModel {
  final String logoUrl;
  final String name;

  BrandModel({required this.logoUrl, required this.name});
}

class CarModel {
  final String imageUrl;
  final String name;
  final String price;
  final String rating;

  bool isLiked;
  CarModel({
    required this.imageUrl,
    required this.name,
    required this.price,
    required this.rating,
    this.isLiked = false, required ,
  });
}
