import 'package:news_app/models/news_model.dart';

class CategoryModel {
  final String coverImage, text;
  final List<NewsModel> news;

  CategoryModel(
      {required this.coverImage, required this.text, required this.news});
}

List<CategoryModel> getCategories() {
  CategoryModel entertainment = CategoryModel(
          coverImage: "assets/entertaiment.avif",
          text: "Entertainment",
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
          text: "Health",
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
          text: "Science",
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
          text: "Technology",
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
          text: "Sports",
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
          text: "General",
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
          text: "Business",
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
