import 'package:dio/dio.dart';
import 'package:news_app/models/news_model.dart';

class NewsServices {
  NewsServices();

  final dio = Dio();

  Future<List<NewsModel>> getNewsList({String category = "general"}) async {
    try {
      final response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=c118fa58bf354ca2bbf3ba9c773d0551&category=$category');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articlesList = jsonData['articles'];

      List<NewsModel> newsModelList = [];
      for (dynamic article in articlesList) {
        NewsModel newsModel = NewsModel.fromJson(article);
        newsModelList.add(newsModel);
      }
      return newsModelList;
    } catch (e) {
      return [];
    }
  }
}
