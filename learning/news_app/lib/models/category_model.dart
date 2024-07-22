import 'package:news_app/models/news_model.dart';

class CategoryModel {
  final String coverImage, category;
  final List<NewsModel> news;

  CategoryModel(
      {required this.coverImage, required this.category, required this.news});
}

List<CategoryModel> getCategories() {
  CategoryModel entertainment = CategoryModel(
          coverImage: "assets/entertaiment.avif",
          category: "Entertainment",
          news: [
            NewsModel(
                image: "assets/jajaja.jpg",
                headline: "Head Screen1",
                details: "Details 1"),
            NewsModel(
                image: "assets/jajaja.jpg",
                headline: "Head Screen1",
                details: "Details 2"),
            NewsModel(
                image: "assets/jajaja.jpg",
                headline: "Head Screen1",
                details: "Details 3"),
            NewsModel(
                image: "assets/jajaja.jpg",
                headline: "Head Screen1",
                details: "Details 4"),
            NewsModel(
                image: "assets/jajaja.jpg",
                headline: "Head Screen1",
                details: "Details 5"),
            NewsModel(
                image: "assets/jajaja.jpg",
                headline: "Head Screen1",
                details: "Details 6"),
          ]),
      health = CategoryModel(
          coverImage: "assets/health.avif",
          category: "Health",
          news: [
            NewsModel(
                image: "assets/jajaja.jpg",
                headline: "Head Screen1",
                details: "Details 1"),
            NewsModel(
                image: "assets/jajaja.jpg",
                headline: "Head Screen1",
                details: "Details 2"),
            NewsModel(
                image: "assets/jajaja.jpg",
                headline: "Head Screen1",
                details: "Details 3"),
            NewsModel(
                image: "assets/jajaja.jpg",
                headline: "Head Screen1",
                details: "Details 4"),
            NewsModel(
                image: "assets/jajaja.jpg",
                headline: "Head Screen1",
                details: "Details 5"),
            NewsModel(
                image: "assets/jajaja.jpg",
                headline: "Head Screen1",
                details: "Details 6"),
          ]),
      science = CategoryModel(
          coverImage: "assets/science.avif",
          category: "Science",
          news: [
            NewsModel(
                image: "assets/jajaja.jpg",
                headline: "Head Screen1",
                details: "Details 1"),
            NewsModel(
                image: "assets/jajaja.jpg",
                headline: "Head Screen1",
                details: "Details 2"),
            NewsModel(
                image: "assets/jajaja.jpg",
                headline: "Head Screen1",
                details: "Details 3"),
            NewsModel(
                image: "assets/jajaja.jpg",
                headline: "Head Screen1",
                details: "Details 4"),
            NewsModel(
                image: "assets/jajaja.jpg",
                headline: "Head Screen1",
                details: "Details 5"),
            NewsModel(
                image: "assets/jajaja.jpg",
                headline: "Head Screen1",
                details: "Details 6"),
          ]),
      technology = CategoryModel(
          coverImage: "assets/technology.jpeg",
          category: "Technology",
          news: [
            NewsModel(
                image: "assets/jajaja.jpg",
                headline: "Head Screen1",
                details: "Details 1"),
            NewsModel(
                image: "assets/jajaja.jpg",
                headline: "Head Screen1",
                details: "Details 2"),
            NewsModel(
                image: "assets/jajaja.jpg",
                headline: "Head Screen1",
                details: "Details 3"),
            NewsModel(
                image: "assets/jajaja.jpg",
                headline: "Head Screen1",
                details: "Details 4"),
            NewsModel(
                image: "assets/jajaja.jpg",
                headline: "Head Screen1",
                details: "Details 5"),
            NewsModel(
                image: "assets/jajaja.jpg",
                headline: "Head Screen1",
                details: "Details 6"),
          ]),
      sports = CategoryModel(
          coverImage: "assets/sports.avif",
          category: "Sports",
          news: [
            NewsModel(
                image: "assets/jajaja.jpg",
                headline: "Head Screen1",
                details: "Details 1"),
            NewsModel(
                image: "assets/jajaja.jpg",
                headline: "Head Screen1",
                details: "Details 2"),
            NewsModel(
                image: "assets/jajaja.jpg",
                headline: "Head Screen1",
                details: "Details 3"),
            NewsModel(
                image: "assets/jajaja.jpg",
                headline: "Head Screen1",
                details: "Details 4"),
            NewsModel(
                image: "assets/jajaja.jpg",
                headline: "Head Screen1",
                details: "Details 5"),
            NewsModel(
                image: "assets/jajaja.jpg",
                headline: "Head Screen1",
                details: "Details 6"),
          ]),
      general = CategoryModel(
          coverImage: "assets/general.avif",
          category: "General",
          news: [
            NewsModel(
                image: "assets/jajaja.jpg",
                headline: "Head Screen1",
                details: "Details 1"),
            NewsModel(
                image: "assets/jajaja.jpg",
                headline: "Head Screen1",
                details: "Details 2"),
            NewsModel(
                image: "assets/jajaja.jpg",
                headline: "Head Screen1",
                details: "Details 3"),
            NewsModel(
                image: "assets/jajaja.jpg",
                headline: "Head Screen1",
                details: "Details 4"),
            NewsModel(
                image: "assets/jajaja.jpg",
                headline: "Head Screen1",
                details: "Details 5"),
            NewsModel(
                image: "assets/jajaja.jpg",
                headline: "Head Screen1",
                details: "Details 6"),
          ]),
      business = CategoryModel(
          coverImage: "assets/business.avif",
          category: "Business",
          news: [
            NewsModel(
                image: "assets/jajaja.jpg",
                headline: "Head Screen1",
                details: "Details 1"),
            NewsModel(
                image: "assets/jajaja.jpg",
                headline: "Head Screen1",
                details: "Details 2"),
            NewsModel(
                image: "assets/jajaja.jpg",
                headline: "Head Screen1",
                details: "Details 3"),
            NewsModel(
                image: "assets/jajaja.jpg",
                headline: "Head Screen1",
                details: "Details 4"),
            NewsModel(
                image: "assets/jajaja.jpg",
                headline: "Head Screen1",
                details: "Details 5"),
            NewsModel(
                image: "assets/jajaja.jpg",
                headline: "Head Screen1",
                details: "Details 6"),
          ]);
  return [
    sports,
    entertainment,
    health,
    business,
    science,
    technology,
    general,
  ];
}
