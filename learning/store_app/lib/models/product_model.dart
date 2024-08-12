class ProductModel {
  final int id;
  final String title;
  final double price;
  final String description;
  final String category;
  final String image;
  late RatingModel rating;

  // : {"rate": 3.9,"count": 120}

  ProductModel({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
    Map<String, dynamic>? ratingMap,
  }) {
    if (ratingMap != null) {
      rating = RatingModel.fromJson(ratingMap);
    }
  }

  factory ProductModel.fromJson(jsonData) {
    return ProductModel(
      id: jsonData["id"],
      image: jsonData['image'],
      category: jsonData['category'],
      title: jsonData['title'],
      description: jsonData['description'],
      price: jsonData['price'].toDouble(),
      ratingMap: jsonData['rating'],
    );
  }
}

class RatingModel {
  final double rate;
  final int count;
  RatingModel({required this.rate, required this.count});
  factory RatingModel.fromJson(json) {
    return RatingModel(rate: json['rate'].toDouble(), count: json['count']);
  }
}
