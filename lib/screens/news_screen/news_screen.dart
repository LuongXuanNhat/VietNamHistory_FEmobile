import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../common/global_colors.dart';
import '../../route_generator.dart';
import '../../widgets/button_fliter.dart';
import '../../widgets/search_widget.dart';
import '../document_screen/cubit/document_cubit.dart';
import 'cubit/news_cubit.dart';
import 'widget/custom_tabbar.dart';
import 'widget/list_item.dart';

class NewsScreen extends StatefulWidget {
  static MultiBlocProvider providers() {
    return MultiBlocProvider(
      providers: [
        BlocProvider<NewsCubit>(
          create: (context) => NewsCubit(),
        ),
        BlocProvider<DocumentCubit>(
          create: (context) => DocumentCubit(),
        ),
      ],
      child: const NewsScreen(),
    );
  }

  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> with AfterLayoutMixin {
  final TextEditingController _txtSearchController = TextEditingController();
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) async {
    context.read<NewsCubit>().getNews();
    context.read<DocumentCubit>().getListDocument();
    _txtSearchController.addListener(() {
      context
          .read<DocumentCubit>()
          .searchDocument(searchText: _txtSearchController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        key: _globalKey,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          //   foregroundColor: Colors.white,
          centerTitle: true,
          title: const Text(
            "Mở rộng",
            style: TextStyle(
                fontFamily: "Epilogue",
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.w600),
          ),
          iconTheme: IconThemeData(color: GlobalColors.colorBack),
          bottom: const TabBar(tabs: <Widget>[
            CustomTabBar(
              title: "Bản tin lịch sử",
            ),
            CustomTabBar(
              title: "Tài liệu lịch sử",
            ),
          ]),
        ),
        body: TabBarView(
          children: [
            BlocBuilder<NewsCubit, NewsState>(
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
                                        javascriptMode:
                                            JavascriptMode.unrestricted,
                                        initialUrl:
                                            'https://danviet.vn/${item.url}',
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
            BlocBuilder<DocumentCubit, DocumentState>(
              builder: (context, state) {
                return AnimationLimiter(
                  child: ListView(
                    children: AnimationConfiguration.toStaggeredList(
                        duration: const Duration(milliseconds: 375),
                        childAnimationBuilder: (widget) => SlideAnimation(
                              horizontalOffset:
                                  MediaQuery.of(context).size.width / 2,
                              child: FadeInAnimation(child: widget),
                            ),
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: SearchWidget(
                              controller: _txtSearchController,
                              hintText: 'Tìm bất cứ điều gì',
                              isShowFilter: false,
                              prefixIcon: const Icon(
                                Icons.search,
                                color: Colors.black87,
                                size: 30,
                              ),
                            ),
                          ),
                          // Padding(
                          //   padding: const EdgeInsets.only(left: 5),
                          //   child: SizedBox(
                          //     height: 28,
                          //     child: ListView.separated(
                          //         scrollDirection: Axis.horizontal,
                          //         itemBuilder:
                          //             (BuildContext context, int index) {
                          //           return Row(
                          //             children: [
                          //               ButtonFilter(
                          //                 title: "Tạo bài viết",
                          //                 background: GlobalColors.colorButton1,
                          //                 colorWidget:
                          //                     GlobalColors.colorButton1,
                          //                 isPrefix: true,
                          //                 onToggle: () {},
                          //               ),
                          //               const SizedBox(
                          //                 width: 7,
                          //               ),
                          //               const ButtonFilter(
                          //                 title: 'Tất cả',
                          //               ),
                          //               const SizedBox(
                          //                 width: 7,
                          //               ),
                          //               const ButtonFilter(
                          //                 title: 'Bài viết thịnh hành',
                          //               ),
                          //               const SizedBox(
                          //                 width: 7,
                          //               ),
                          //               const ButtonFilter(
                          //                 title: 'Bài viết xem nhiều nhất',
                          //               ),
                          //             ],
                          //           );
                          //         },
                          //         separatorBuilder:
                          //             (BuildContext context, int index) {
                          //           return const SizedBox(
                          //             width: 7,
                          //           );
                          //         },
                          //         itemCount: 1),
                          //   ),
                          // ),

                          state.data.listDocumentResponse != null
                              ? ListView.builder(
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemCount: state.data.listDocumentResponse!
                                      .resultObj?.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return GestureDetector(
                                      onTap: () {
                                        if (state.data.listDocumentResponse!
                                            .resultObj![index].filePath
                                            .contains('.pdf')) {
                                          navigator!.pushNamed(
                                              RouteGenerator
                                                  .detailDocumentScreen,
                                              arguments: {
                                                'idDoc': state
                                                    .data
                                                    .listDocumentResponse!
                                                    .resultObj![index]
                                                    .subId,
                                              });
                                        } else {
                                          navigator!.pushNamed(
                                              RouteGenerator.documentDOCXScreen,
                                              arguments: {
                                                'idDoc': state
                                                    .data
                                                    .listDocumentResponse!
                                                    .resultObj![index]
                                                    .subId,
                                              });
                                        }
                                      },
                                      child: ContainerBuilder(
                                        title: state.data.listDocumentResponse!
                                            .resultObj![index].title,
                                        description: state
                                            .data
                                            .listDocumentResponse!
                                            .resultObj![index]
                                            .description,
                                        url: state.data.listDocumentResponse!
                                            .resultObj![index].filePath,
                                        createDate: state
                                            .data
                                            .listDocumentResponse!
                                            .resultObj![index]
                                            .createdAt,
                                        fullname: state
                                            .data
                                            .listDocumentResponse!
                                            .resultObj![index]
                                            .userShort
                                            .fullName,
                                        viewNumber: state
                                            .data
                                            .listDocumentResponse!
                                            .resultObj![index]
                                            .viewNumber,
                                        saveNumber: state
                                            .data
                                            .listDocumentResponse!
                                            .resultObj![index]
                                            .saveNumber,
                                        downloadNumber: state
                                            .data
                                            .listDocumentResponse!
                                            .resultObj![index]
                                            .downloadNumber,
                                      ),
                                    );
                                  })
                              : Container(),
                        ]),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }

  Widget ContainerBuilder({
    required String title,
    required String description,
    required String url,
    required DateTime createDate,
    required String fullname,
    required int viewNumber,
    required int saveNumber,
    required int downloadNumber,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey.withOpacity(0.5),
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  "assets/images/folder.png",
                  height: 110,
                  width: 100,
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(width: 10),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            title,
                            overflow: TextOverflow.ellipsis,
                            softWrap: true,
                            maxLines: 2,
                            style: const TextStyle(
                                fontFamily: "Epilogue",
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        const SizedBox(width: 10),
                        url.contains('.pdf')
                            ? const Icon(
                                FontAwesomeIcons.solidFilePdf,
                                color: Colors.red,
                                size: 20,
                              )
                            : const Icon(
                                FontAwesomeIcons.solidFileWord,
                                color: Colors.blue,
                                size: 20,
                              )
                      ],
                    ),
                    Text(
                      description,
                      softWrap: true,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          fontFamily: "Mulish",
                          fontSize: 10,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        // const Icon(Icons.document_scanner_sharp,
                        //     color: Colors.black, size: 20),
                        // const Text(
                        //   '20 trang',
                        //   style: TextStyle(
                        //       fontFamily: "Mulish",
                        //       fontSize: 10,
                        //       color: Colors.black,
                        //       fontWeight: FontWeight.w400),
                        // ),
                        // const Icon(
                        //   Icons.download,
                        //   color: Colors.black,
                        //   size: 20,
                        // ),
                        // Text(
                        //   '$saveNumber',
                        //   style: const TextStyle(
                        //       fontFamily: "Mulish",
                        //       fontSize: 10,
                        //       color: Colors.black,
                        //       fontWeight: FontWeight.w400),
                        // ),

                        const Icon(
                          Icons.remove_red_eye,
                          color: Colors.black,
                          size: 20,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          '$viewNumber lượt xem',
                          style: const TextStyle(
                              fontFamily: "Mulish",
                              fontSize: 10,
                              color: Colors.black,
                              fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(width: 10),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
