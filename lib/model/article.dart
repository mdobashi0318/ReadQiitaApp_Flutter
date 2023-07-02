// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

import 'package:read_qiita_app_flutter/api_manager.dart';

import 'tags.dart';
import 'user.dart';

class Article extends APIManager {
  final String created_at;
  final int likes_count;
  final String title;
  // final User user;
  // final List<Tags> tags;
  final String url;
  final String id;

  Article(this.created_at, this.likes_count, this.title, /*this.user, this.tags,*/
      this.url, this.id);

  Article.fromJson(Map<String, dynamic> json)
      : created_at = json['created_at'],
        likes_count = json['likes_count'],
        title = json['title'],
        // user = json['user'],
        // tags = json['tags'],
        url = json['url'],
        id = json['id'];

  Map<String, dynamic> toJson() => {
        'created_at': created_at,
        'likes_count': likes_count,
        'title': title,
        // 'user': user,
        // 'tags': tags,
        'url': url,
        'id': id,
      };

  Future<List<Article>> getArticle() async {
    List<Map<String, String>> jsonArray = json.decode(await get('items'));
    List<Article> articleList = jsonArray.map((i) => Article.fromJson(i)).toList();
    return articleList;
  }
}
