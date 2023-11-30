import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

import '../../common/global_colors.dart';
import '../../route_generator.dart';
import '../../widgets/button_fliter.dart';
import '../../widgets/search_widget.dart';
import 'cubit/discover_cubit.dart';
import 'widget/postcard.dart';

class DiscoverScreen extends StatefulWidget {
  static BlocProvider<DiscoverCubit> provider() {
    return BlocProvider(
      create: (context) => DiscoverCubit(),
      child: const DiscoverScreen(),
    );
  }

  const DiscoverScreen({super.key});

  @override
  State<DiscoverScreen> createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> with AfterLayoutMixin {
  List<String> tags = [];
  bool isShowFilter = true;
  bool isSelected = true;
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();

  String? selectTags;
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) async {
    await context.read<DiscoverCubit>().getDiscover();
    await context.read<DiscoverCubit>().getListTag();
    _txtSearchController.addListener(() {
      context
          .read<DiscoverCubit>()
          .searchPost(searchText: _txtSearchController.text);
    });
  }

  final TextEditingController _txtSearchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          //   foregroundColor: Colors.white,
          centerTitle: true,
          title: const Text(
            "Khám phá",
            style: TextStyle(
                fontFamily: "Epilogue",
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.w600),
          ),
          iconTheme: IconThemeData(color: GlobalColors.colorBack),
        ),
        key: _globalKey,
        body: BlocBuilder<DiscoverCubit, DiscoverState>(
          builder: (context, state) {
            tags = state.data!.listTag!;
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
                          isShowFilter: true,
                          prefixIcon: const Icon(
                            Icons.search,
                            color: Colors.black87,
                            size: 30,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: SizedBox(
                          height: 28,
                          child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (BuildContext context, int index) {
                                return Row(
                                  children: [
                                    ButtonFilter(
                                      title: "Tạo bài viết",
                                      background: GlobalColors.colorButton1,
                                      colorWidget: GlobalColors.colorButton1,
                                      isPrefix: true,
                                      onToggle: () {
                                        navigator!.pushNamed(
                                            RouteGenerator.createPostScreen);
                                      },
                                    ),
                                    const SizedBox(
                                      width: 7,
                                    ),
                                    const ButtonFilter(
                                      title: 'Tất cả',
                                    ),
                                    const SizedBox(
                                      width: 7,
                                    ),
                                    const ButtonFilter(
                                      title: 'Bài viết thịnh hành',
                                    ),
                                    const SizedBox(
                                      width: 7,
                                    ),
                                    const ButtonFilter(
                                      title: 'Bài viết xem nhiều nhất',
                                    ),
                                  ],
                                );
                              },
                              separatorBuilder:
                                  (BuildContext context, int index) {
                                return const SizedBox(
                                  width: 7,
                                );
                              },
                              itemCount: 1),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 5,
                            right: MediaQuery.of(context).size.width * 0.44),
                        child: const Text(
                          'Tìm bài viết theo Hashtag',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Epilogue'),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: SizedBox(
                          height: 28,
                          child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (BuildContext context, int index) {
                                return Row(
                                  children: [
                                    ButtonFilter(
                                      isSelected: isShowFilter,
                                      title: 'Tất cả',
                                      onToggle: () {
                                        context
                                            .read<DiscoverCubit>()
                                            .getDiscover();
                                        setState(() {
                                          isShowFilter = !isShowFilter;
                                          selectTags = null;
                                        });
                                      },
                                    ),
                                    for (var item in tags)
                                      Padding(
                                        padding: const EdgeInsets.only(left: 7),
                                        child: ButtonFilter(
                                          title: item,
                                          isSelected: selectTags == item,
                                          onToggle: () {
                                            context
                                                .read<DiscoverCubit>()
                                                .getDiscoverByTag(tag: item);
                                            setState(() {
                                              selectTags = item;
                                              isShowFilter = false;
                                            });
                                          },
                                        ),
                                      ),
                                  ],
                                );
                              },
                              separatorBuilder:
                                  (BuildContext context, int index) {
                                return const SizedBox(
                                  width: 7,
                                );
                              },
                              itemCount: 1),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Center(
                        child: Text(
                          'Những tài liệu phổ biến',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Epilogue'),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      if (state.data!.listDiscover?.resultObj != null)
                        ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount:
                              state.data!.listDiscover?.resultObj!.length,
                          itemBuilder: (BuildContext context, int index) {
                            return PostCard(
                              onTap: () {
                                navigator!.pushNamed(
                                    RouteGenerator.detailPostScreen,
                                    arguments: {
                                      'PostId': state.data!.listDiscover!
                                          .resultObj![index].subId,
                                      'UserId': state.data!.listDiscover!
                                          .resultObj![index].userShort!.id
                                    });
                              },
                              post: state.data!.listDiscover!.resultObj![index],
                            );
                          },
                        ),
                    ]),
              ),
            );
          },
        ),
      ),
    );
  }
}

class ContainerDiscover extends StatelessWidget {
  final String title;
  final String actor;
  final String view;
  final DateTime date;
  final String image;
  const ContainerDiscover({
    super.key,
    required this.title,
    required this.actor,
    required this.view,
    required this.date,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            border: Border.all(color: GlobalColors.border_color, width: 1.0)),
        child: GestureDetector(
          onTap: () {},
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(4), topRight: Radius.circular(4)),
                child: Image.network(
                  image,
                  fit: BoxFit.fill,
                  height: 200,
                  width: 350,
                ),
              ),
              const SizedBox(
                height: 9,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Text(
                  title,
                  style: const TextStyle(
                    fontFamily: "Mulish",
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Row(
                  children: [
                    const FaIcon(
                      FontAwesomeIcons.leaf,
                      size: 12,
                      color: Colors.black,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      actor,
                      style: const TextStyle(
                          color: Colors.black,
                          fontFamily: "Mulish",
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          view,
                          style: const TextStyle(
                              color: Colors.black,
                              fontFamily: "Mulish",
                              fontSize: 12,
                              fontWeight: FontWeight.w400),
                        ),
                        const Text(
                          ' lượt xem',
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Mulish",
                              fontSize: 12,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    Text(
                      date.toString().substring(0, 10),
                      style: const TextStyle(
                          color: Colors.black,
                          fontFamily: "Mulish",
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
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
