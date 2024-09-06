class BookModel {
  final String title;
  final String author;
  final double price;
  final double rating;
  final int ratersCount;
  final String? image;

  BookModel({
    this.image,
    required this.title,
    required this.author,
    required this.price,
    required this.rating,
    required this.ratersCount,
  });
}
