class BookModel2 {
  final String title;
  final String author;
  final double price;
  final double rating;
  final int ratersCount;
  final String? image;

  BookModel2({
    this.image,
    required this.title,
    required this.author,
    required this.price,
    required this.rating,
    required this.ratersCount,
  });
}
