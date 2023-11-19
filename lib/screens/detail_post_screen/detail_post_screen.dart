import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../common/global_colors.dart';
import '../../models/post/discover/response/list_discover_response.dart';
import '../../route_generator.dart';
import 'cubit/detail_post_cubit.dart';

class DetailPostScreen extends StatefulWidget {
  final ResultObj resultObj;
  static MultiBlocProvider provider({required ResultObj resultObj}) {
    return MultiBlocProvider(providers: [
      BlocProvider<DetailPostCubit>(
        create: (BuildContext context) => DetailPostCubit(),
      ),
    ], child: DetailPostScreen(resultObj: resultObj));
  }

  const DetailPostScreen({super.key, required this.resultObj});

  @override
  State<DetailPostScreen> createState() => _DetailPostScreenState();
}

class _DetailPostScreenState extends State<DetailPostScreen>
    with AfterLayoutMixin {
  final GlobalKey _globalKey = GlobalKey();
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) async {
    // context.read<DetailPostCubit>().getDetailPost(id: widget.resultObj.id!);
    context.read<DetailPostCubit>().isLike(
        postId: widget.resultObj.subId.toString(),
        userId: widget.resultObj.userShort!.id!);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    String? content = widget.resultObj.content;
    if (containsHtml(content!)) {
      content = content.replaceAll(RegExp(r'<[^>]*>'), '');
    }
    return SafeArea(
      child: Scaffold(
        key: _globalKey,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          //   foregroundColor: Colors.white,
          centerTitle: true,
          title: const Text(
            "Chi tiết bài viết",
            style: TextStyle(
                fontFamily: "Epilogue",
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.w600),
          ),
          iconTheme: IconThemeData(color: GlobalColors.colorBack),
        ),
        body: BlocBuilder<DetailPostCubit, DetailPostState>(
          builder: (context, state) {
            return SingleChildScrollView(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.network(
                            widget.resultObj.userShort!.image ?? '',
                            errorBuilder: (BuildContext context,
                                Object exception, StackTrace? stackTrace) {
                              return const CircleAvatar(
                                radius: 25,
                                backgroundImage:
                                    AssetImage('assets/images/avartar1.png'),
                              );
                            },
                            fit: BoxFit.cover,
                            width: 50,
                            height: 50,
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.resultObj.userShort!.fullName!,
                              style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Inter'),
                            ),
                            Row(
                              children: [
                                const Text(
                                  '21/08/2023',
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Inter'),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Icon(
                                  Icons.public,
                                  size: 13,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      widget.resultObj.viewNumber.toString(),
                                      style: const TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Inter'),
                                    ),
                                    const Text(
                                      ' lượt đọc',
                                      style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Inter'),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: size.width * 0.3,
                                ),
                                InkWell(
                                  onTap: () {
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return AlertDialog(
                                            alignment: Alignment.topRight,
                                            elevation: 0.0,
                                            backgroundColor: Colors.transparent,
                                            content: IntrinsicWidth(
                                              child: Container(
                                                padding:
                                                    const EdgeInsets.all(10),
                                                decoration: const BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                10)),
                                                    color: Colors.white),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    GestureDetector(
                                                      onTap: () {
                                                        navigator!.pushNamed(
                                                            RouteGenerator
                                                                .editPostScreen,
                                                            arguments: {
                                                              'postId': widget
                                                                  .resultObj
                                                                  .subId
                                                                  .toString(),
                                                              'topicName': widget
                                                                  .resultObj
                                                                  .topicName,
                                                              'tags': widget
                                                                  .resultObj
                                                                  .tags,
                                                            });
                                                      },
                                                      child: const Row(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          Icon(
                                                            Icons.edit_outlined,
                                                            size: 20,
                                                          ),
                                                          Text(
                                                            'Sửa bài',
                                                            style: TextStyle(
                                                                fontFamily:
                                                                    'Mulish',
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    const SizedBox(height: 10),
                                                    GestureDetector(
                                                      onTap: () {
                                                        showDialog(
                                                            context: context,
                                                            builder: (BuildContext
                                                                    context) =>
                                                                AlertDialog(
                                                                  title: const Text(
                                                                      'Xác nhận xóa bài viết'),
                                                                  content:
                                                                      const Text(
                                                                          'Bạn có chắc chắn muốn xóa bài viết này?'),
                                                                  actions: [
                                                                    TextButton(
                                                                        onPressed:
                                                                            () {
                                                                          Navigator.pop(
                                                                              context);
                                                                        },
                                                                        child: const Text(
                                                                            'Hủy')),
                                                                    TextButton(
                                                                        onPressed:
                                                                            () {
                                                                          _globalKey
                                                                              .currentContext!
                                                                              .read<DetailPostCubit>()
                                                                              .deletePost(id: widget.resultObj.id!);
                                                                          Navigator.pop(
                                                                              context);
                                                                        },
                                                                        child: const Text(
                                                                            'Xóa')),
                                                                  ],
                                                                ));
                                                      },
                                                      child: const Row(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          Icon(
                                                            Icons
                                                                .delete_outline,
                                                            size: 20,
                                                          ),
                                                          Text(
                                                            'Xóa bài',
                                                            style: TextStyle(
                                                                fontFamily:
                                                                    'Mulish',
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    const SizedBox(height: 10),
                                                    GestureDetector(
                                                      onTap: () {
                                                        navigator!.pushNamed(
                                                            RouteGenerator
                                                                .reportPostScreen,
                                                            arguments: {
                                                              'PostDetail':
                                                                  widget
                                                                      .resultObj
                                                            });
                                                      },
                                                      child: const Row(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          Icon(
                                                            Icons
                                                                .report_outlined,
                                                            size: 20,
                                                          ),
                                                          Text(
                                                            'Báo cáo bài viết',
                                                            style: TextStyle(
                                                                fontFamily:
                                                                    'Mulish',
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        });
                                  },
                                  child: const FaIcon(
                                    FontAwesomeIcons.ellipsisVertical,
                                    size: 13,
                                  ),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 17,
                    ),
                    Row(
                      children: [
                        const Text(
                          'Thể loại bài viết:',
                          style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Inter'),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: Colors.black87,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text(
                              widget.resultObj.topicName ?? '',
                              style: const TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Inter'),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 17,
                    ),
                    ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: widget.resultObj.tags!.length,
                        itemBuilder: (BuildContext context, int index) {
                          return TextHashtag(
                              text: widget.resultObj.tags![index].name ?? '');
                        }),
                    Text(
                      widget.resultObj.title!.toUpperCase(),
                      style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                          fontFamily: 'Inter'),
                    ),
                    const SizedBox(
                      height: 17,
                    ),
                    Text(
                      content!,
                      style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                          fontFamily: 'Inter'),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Image.network(widget.resultObj.image!),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {
                            _globalKey.currentContext!
                                .read<DetailPostCubit>()
                                .likePost(
                                    postId: widget.resultObj.subId.toString(),
                                    userId: widget.resultObj.userShort!.id!);

                            _globalKey.currentContext!
                                .read<DetailPostCubit>()
                                .isLike(
                                    postId: widget.resultObj.subId.toString(),
                                    userId: widget.resultObj.userShort!.id!);
                          },
                          child: Row(
                            children: [
                              Icon(
                                  state.data.isLike == true
                                      ? Icons.favorite
                                      : Icons.favorite_border,
                                  size: 20,
                                  color: GlobalColors.ButtonNavigation),
                              const SizedBox(
                                width: 10,
                              ),
                              state.data.isLike == true
                                  ? Text(
                                      'Bỏ yêu thích',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Inter',
                                          color: GlobalColors.ButtonNavigation),
                                    )
                                  : Text(
                                      'Yêu Thích',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Inter',
                                          color: GlobalColors.ButtonNavigation),
                                    ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        InkWell(
                          onTap: () {
                            _globalKey.currentContext!
                                .read<DetailPostCubit>()
                                .savePost(
                                    postId: widget.resultObj.subId.toString(),
                                    userId: widget.resultObj.userShort!.id!);
                            _globalKey.currentContext!
                                .read<DetailPostCubit>()
                                .isSave(
                                    postId: widget.resultObj.subId.toString(),
                                    userId: widget.resultObj.userShort!.id!);
                          },
                          child: Row(
                            children: [
                              state.data.isSave == true
                                  ? const Icon(Icons.check,
                                      size: 20, color: Colors.black54)
                                  : const Icon(Icons.save_alt_rounded,
                                      size: 20, color: Colors.black54),
                              const SizedBox(
                                width: 5,
                              ),
                              state.data.isSave == true
                                  ? const Text('Đã lưu',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Inter',
                                          color: Colors.black54))
                                  : const Text(
                                      'Lưu bài viết',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Inter',
                                          color: Colors.black54),
                                    ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        const Icon(Icons.share_outlined,
                            size: 20, color: Colors.black54),
                        const Text(
                          'Chia sẻ',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Inter',
                              color: Colors.black54),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class TextHashtag extends StatelessWidget {
  final String text;
  const TextHashtag({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      '#$text',
      style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: GlobalColors.ButtonNavigation,
          fontFamily: 'Inter'),
    );
  }
}

bool containsHtml(String input) {
  final RegExp htmlRegex = RegExp(r'<[^>]*>');

  return htmlRegex.hasMatch(input);
}
