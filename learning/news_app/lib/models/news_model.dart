class NewsModel {
  final String? image, headline, details;

  NewsModel({this.image, this.headline, this.details});

  factory NewsModel.fromJson(json) {
    return NewsModel(
      image: json['urlToImage'],
      headline: json['title'],
      details: json['description'],
    );
  }
}
