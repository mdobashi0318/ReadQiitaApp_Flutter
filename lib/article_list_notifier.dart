import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'api_manager.dart';
import 'model/article.dart';

class ArticleListNotifier extends StateNotifier<List<Article>> {
  ArticleListNotifier() : super([]);

  Future<List<Article>> getArticleList() async {
    String response = await APIManager().get('items');
    List<dynamic> jsonArray = json.decode(response);
    List<Article> articleList =
        jsonArray.map((i) => Article.fromJson(i)).toList();
    print('articleList: ${articleList[0].title}');
    return articleList;
  }
}
