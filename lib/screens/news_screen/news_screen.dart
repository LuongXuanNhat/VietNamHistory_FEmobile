import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../common/global_colors.dart';
import 'cubit/news_cubit.dart';
import 'widget/list_item.dart';

class NewsScreen extends StatefulWidget {
  static BlocProvider<NewsCubit> provider() {
    return BlocProvider<NewsCubit>(
      create: (context) => NewsCubit(),
      child: const NewsScreen(),
    );
  }

  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> with AfterLayoutMixin {
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) async {
    context.read<NewsCubit>().getNews();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        //   foregroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Bản tin lịch sử tổng hợp",
          style: TextStyle(
              fontFamily: "Epilogue",
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.w600),
        ),
        iconTheme: IconThemeData(color: GlobalColors.colorBack),
      ),
      body: BlocBuilder<NewsCubit, NewsState>(
        builder: (context, state) {
          return ListView.builder(
              itemCount: state.data.newsResponse?.resultObj.length ?? 0,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    if (state.data.newsResponse != null)
                      for (var item in state.data.newsResponse!.resultObj)
                        ArticleListItem(
                          item: item,
                          onTap: () {
                            SystemChrome.setEnabledSystemUIMode(
                                SystemUiMode.manual,
                                overlays: []);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => WebView(
                                  javascriptMode: JavascriptMode.unrestricted,
                                  initialUrl: 'https://danviet.vn/${item.url}',
                                ),
                              ),
                            );
                          },
                        ),
                    //  ArticleListItem(
                    //       item: articles[index],
                    //       onTap: (ArticleDto article) {
                    //         FocusManager.instance.primaryFocus?.unfocus();
                    //         Navigator.push(
                    //           context,
                    //           CupertinoPageRoute(
                    //             builder: (context) => ArticleDetail(article: article),
                    //           ),
                    //         );
                    //       },
                    //     ),
                  ],
                );
              });
        },
      ),
    );
  }
}
