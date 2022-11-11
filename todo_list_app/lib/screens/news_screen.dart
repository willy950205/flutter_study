import 'package:flutter/material.dart';
import 'package:todo_list_app/providers/news_api.dart';

import '../models/news.dart';

class NewsScreen extends StatefulWidget {
  @override
  _NewsScreenState createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  NewsApi newsApi = NewsApi();
  List<News> news = [];
  bool isLoading = true;

  Future initNews() async {
    news = await newsApi.getNews();
  }

  @override
  void initState() {
    super.initState();
    initNews().then((value) {
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext buildContext) {
    return Scaffold(
        appBar: AppBar(
          title: Text('뉴스 화면'),
        ),
        body: isLoading
            ? Center(
                child: const CircularProgressIndicator(),
              )
            : GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 2 / 3,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20),
                itemCount: news.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Text(
                          news[index].title,
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          news[index].description,
                          style: TextStyle(fontSize: 16),
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        )
                      ],
                    ),
                  );
                },
              ));
  }
}
