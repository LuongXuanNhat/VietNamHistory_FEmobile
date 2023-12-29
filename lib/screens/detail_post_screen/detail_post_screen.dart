import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:share_plus/share_plus.dart';

import '../../common/global_colors.dart';

import '../../models/user/user_pres.dart';
import '../../route_generator.dart';
import '../profile_user_screen/profile_dialog.dart';
import 'cubit/detail_post_cubit.dart';
import 'submit/like/cubit/likepost_cubit.dart';
import 'submit/save/cubit/savepost_cubit.dart';

class DetailPostScreen extends StatefulWidget {
  final String? subId;
  final String? userId;
  static MultiBlocProvider provider(
      {required String subId, required String userId}) {
    return MultiBlocProvider(providers: [
      BlocProvider<DetailPostCubit>(
        create: (BuildContext context) => DetailPostCubit(),
      ),
      BlocProvider<LikepostCubit>(
        create: (BuildContext context) => LikepostCubit(),
      ),
      BlocProvider<SavepostCubit>(
        create: (BuildContext context) => SavepostCubit(),
      ),
    ], child: DetailPostScreen(subId: subId, userId: userId));
  }

  const DetailPostScreen({
    Key? key,
    this.subId,
    this.userId,
  }) : super(key: key);

  @override
  State<DetailPostScreen> createState() => _DetailPostScreenState();
}

class _DetailPostScreenState extends State<DetailPostScreen>
    with AfterLayoutMixin {
  final GlobalKey _globalKey = GlobalKey();
  String meId = '';

  TextEditingController commentController = TextEditingController();
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) async {
    context.read<DetailPostCubit>().getDetailPost(id: widget.subId!);
    context
        .read<LikepostCubit>()
        .isLike(postId: widget.subId!, userId: widget.userId!);
    context
        .read<SavepostCubit>()
        .isSave(postId: widget.subId!, userId: widget.userId!);
    Map<String, dynamic> userData = await UserPreferences.getUser();
    meId = userData['id']!;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

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
            final detail = state.data.data;

            return SingleChildScrollView(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return ProfileDialog(
                                    fullname: detail
                                            ?.resultObj?.userShort?.fullName ??
                                        '',
                                    urlImage:
                                        detail?.resultObj?.userShort?.image ??
                                            'https://via.placeholder.com/86x91',
                                  );
                                });
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.network(
                              detail?.resultObj?.userShort?.image ?? '',
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
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              detail?.resultObj?.userShort?.fullName ?? '',
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
                                      detail?.resultObj?.viewNumber
                                              ?.toString() ??
                                          '',
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
                                  width: size.width * 0.2,
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.transparent,
                                    elevation: 0.0,
                                    shadowColor: Colors.transparent,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                  ),
                                  onPressed: () {
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
                                                              'Data': detail
                                                                  ?.resultObj
                                                            });
                                                      },
                                                      child: meId ==
                                                              detail
                                                                  ?.resultObj
                                                                  ?.userShort
                                                                  ?.id
                                                          ? const Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              children: [
                                                                Icon(
                                                                  Icons
                                                                      .edit_outlined,
                                                                  size: 20,
                                                                ),
                                                                Text(
                                                                  'Sửa bài',
                                                                  style: TextStyle(
                                                                      fontFamily:
                                                                          'Mulish',
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400),
                                                                ),
                                                              ],
                                                            )
                                                          : Container(),
                                                    ),
                                                    meId ==
                                                            detail?.resultObj
                                                                ?.userShort?.id
                                                        ? const SizedBox(
                                                            height: 10)
                                                        : Container(),
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
                                                                              .deletePost(id: detail?.resultObj?.id ?? '');
                                                                          Navigator.pop(
                                                                              context);
                                                                        },
                                                                        child: const Text(
                                                                            'Xóa')),
                                                                  ],
                                                                ));
                                                      },
                                                      child: meId ==
                                                              detail
                                                                  ?.resultObj
                                                                  ?.userShort
                                                                  ?.id
                                                          ? const Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
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
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400),
                                                                ),
                                                              ],
                                                            )
                                                          : Container(),
                                                    ),
                                                    meId ==
                                                            detail?.resultObj
                                                                ?.userShort?.id
                                                        ? const SizedBox(
                                                            height: 10)
                                                        : Container(),
                                                    GestureDetector(
                                                      onTap: () {
                                                        navigator!.pushNamed(
                                                            RouteGenerator
                                                                .reportPostScreen,
                                                            arguments: {
                                                              'PostDetail': state
                                                                  .data
                                                                  .data
                                                                  ?.resultObj
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
                                    color: Colors.black54,
                                    size: 20,
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
                              detail?.resultObj?.topicName ?? '',
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
                    if (detail != null)
                      ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: detail.resultObj?.tags!.length,
                          itemBuilder: (BuildContext context, int index) {
                            return TextHashtag(
                                text:
                                    detail.resultObj?.tags![index].name ?? '');
                          }),
                    Text(
                      detail?.resultObj?.title!.toUpperCase() ?? '',
                      style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                          fontFamily: 'Inter'),
                    ),
                    const SizedBox(
                      height: 17,
                    ),
                    Html(data: detail?.resultObj?.content ?? ''),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Image.network(
                        detail?.resultObj?.image! ?? '',
                        errorBuilder: (BuildContext context, Object exception,
                            StackTrace? stackTrace) {
                          return const CircleAvatar(
                            radius: 25,
                            backgroundImage:
                                AssetImage('assets/images/album.png'),
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    BlocBuilder<LikepostCubit, LikepostState>(
                      builder: (context, state) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {
                                _globalKey.currentContext!
                                    .read<LikepostCubit>()
                                    .likePost(
                                        postId: detail?.resultObj?.subId
                                                .toString() ??
                                            '',
                                        userId:
                                            detail?.resultObj?.userShort!.id! ??
                                                '');
                              },
                              child: Row(
                                children: [
                                  Icon(
                                      state.data.isLike
                                          ? Icons.favorite
                                          : Icons.favorite_border,
                                      size: 20,
                                      color: GlobalColors.ButtonNavigation),
                                  const SizedBox(
                                    width: 3,
                                  ),
                                  state.data.isLike == true
                                      ? Text(
                                          '${state.data.numberLike} Thích',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: 'Inter',
                                              color: GlobalColors
                                                  .ButtonNavigation),
                                        )
                                      : Text(
                                          '${state.data.numberLike} Thích',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: 'Inter',
                                              color: GlobalColors
                                                  .ButtonNavigation),
                                        ),
                                ],
                              ),
                            ),
                            BlocBuilder<SavepostCubit, SavepostState>(
                              builder: (context, state) {
                                return InkWell(
                                  onTap: () {
                                    _globalKey.currentContext!
                                        .read<SavepostCubit>()
                                        .savePost(
                                            postId: detail?.resultObj?.subId
                                                    ?.toString() ??
                                                '',
                                            userId: detail?.resultObj
                                                    ?.userShort!.id ??
                                                '');
                                    _globalKey.currentContext!
                                        .read<SavepostCubit>()
                                        .isSave(
                                            postId: detail?.resultObj?.subId
                                                    .toString() ??
                                                '',
                                            userId: detail?.resultObj
                                                    ?.userShort!.id ??
                                                '');
                                  },
                                  child: meId !=
                                          detail?.resultObj?.userShort?.id
                                      ? Row(
                                          children: [
                                            state.data.isSave == true
                                                ? const Icon(Icons.check,
                                                    size: 20,
                                                    color: Colors.black54)
                                                : const Icon(
                                                    Icons.save_alt_rounded,
                                                    size: 20,
                                                    color: Colors.black54),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            state.data.isSave == true
                                                ? const Text('Đã lưu',
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontFamily: 'Inter',
                                                        color: Colors.black54))
                                                : const Text(
                                                    'Lưu bài',
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontFamily: 'Inter',
                                                        color: Colors.black54),
                                                  ),
                                          ],
                                        )
                                      : Container(),
                                );
                              },
                            ),
                            InkWell(
                              onTap: () {
                                navigator!.pushNamed(
                                    RouteGenerator.commentScreen,
                                    arguments: {
                                      'PostId':
                                          detail?.resultObj?.subId.toString() ??
                                              '',
                                    });
                              },
                              child: const Row(
                                children: [
                                  Icon(Icons.comment_outlined,
                                      size: 20, color: Colors.black54),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Bình luận',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Inter',
                                        color: Colors.black54),
                                  ),
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () async {
                                await Share.share('Share this text',
                                    subject: 'hello nhat ');
                              },
                              child: const Row(
                                children: [
                                  Icon(Icons.share_outlined,
                                      size: 20, color: Colors.black54),
                                  Text(
                                    'Chia sẻ',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Inter',
                                        color: Colors.black54),
                                  )
                                ],
                              ),
                            ),
                          ],
                        );
                      },
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
