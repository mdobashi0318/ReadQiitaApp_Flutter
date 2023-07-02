import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:read_qiita_app_flutter/model/article.dart';

import 'article_list_notifier.dart';

final articleProvider = FutureProvider<List<Article>>(
  (ref) {
    return ArticleListNotifier().getArticleList();
  },
);

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends ConsumerWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AsyncValue config = ref.watch(articleProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("ReadQiitaApp"),
      ),
      body: config.when(
        loading: () {
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
        error: (error, stack) => Text('Error: $error'),
        data: (articles) {
          return ListView.builder(
            itemCount: articles.length,
            itemBuilder: (BuildContext context, int index) {
              final article = articles[index] as Article;
              return Container(
                padding: const EdgeInsets.all(10),
                child: Column(children: [
                  Row(
                    children: [
                      Text('@${article.user.id}'),
                      Text(article.user.organization ?? ""),
                    ],
                  ),
                  Text(article.created_at),
                  Text(
                    article.title,
                  )
                ]),
              );
            },
          );
        },
      ),
    );
  }
}
