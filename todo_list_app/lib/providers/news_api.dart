import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:todo_list_app/models/news.dart';

class NewsApi {
  static String apiUri =
      'https://newsapi.org/v2/top-headlines?country=us&apiKey=';
  static String apiKey = 'f790a8b4fca544d587f29d373fe4eafa';

  Uri uri = Uri.parse(apiUri + apiKey);

  Future<List<News>> getNews() async {
    List<News> news = [];
    final response = await http.get(uri);
    final statusCode = response.statusCode;
    final body = response.body;

    if (statusCode == 200) {
      news = jsonDecode(body)['articles'].map<News>((article) {
        return News.fromMap(article);
      }).toList();
    }

    return news;
  }
}
