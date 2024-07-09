import 'package:flutter/material.dart';
import 'package:news_app/models/news_model.dart';

class NewsWidget extends StatelessWidget {
  NewsWidget({required this.news, super.key});

  NewsModel news;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: SizedBox(
        height: 270,
        width: 400,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: news.image == null
                  ? Image.asset("assets/jajaja.jpg",
                      fit: BoxFit.cover, width: double.infinity, height: 160)
                  : Image.network(
                      news.image ??
                          "https://nypost.com/wp-content/uploads/sites/2/2024/07/newspress-collage-41t89v8e7-1720357388061.jpg?quality=75&strip=all&1720343083&w=1024",
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: 160),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              news.headline ?? "Head Line",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text(
              news.details ?? "Details",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
