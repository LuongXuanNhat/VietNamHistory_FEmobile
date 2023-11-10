import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

import '../../common/global_colors.dart';
import '../../models/post/discover/response/list_discover_response.dart';
import '../create_post_screen/cubit/create_post_cubit.dart';
import '../create_post_screen/wigets/topic_card.dart';
import 'cubit/edit_post_cubit.dart';

class EditPostScreen extends StatefulWidget {
  final String postId;
  static MultiBlocProvider provider({required String postId}) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<EditPostCubit>(
          create: (context) => EditPostCubit(),
        ),
        BlocProvider<CreatePostCubit>(create: (context) => CreatePostCubit())
      ],
      child: EditPostScreen(
        postId: postId,
      ),
    );
  }

  const EditPostScreen({super.key, required this.postId});

  @override
  State<EditPostScreen> createState() => _EditPostScreenState();
}

class _EditPostScreenState extends State<EditPostScreen> with AfterLayoutMixin {
  final _titletxt = TextEditingController();
  final _contenttxt = TextEditingController();
  final _hashtagtxt = TextEditingController();
  final _vars = <VariantionItem>[];
  final _hashtag = <String>[];
  bool shouldShowAlertDialog = true;

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) async {
    await context.read<CreatePostCubit>().getTopics();
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
          "Chỉnh sửa bài viết",
          style: TextStyle(
              fontFamily: "Epilogue",
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.w600),
        ),
        iconTheme: IconThemeData(color: GlobalColors.colorBack),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Tiêu đề bài viết',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                fontFamily: 'Inter',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.black54, width: 1.0)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 5),
                child: TextField(
                  controller: _titletxt,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontFamily: 'Inter',
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                  maxLines: 2,
                  maxLength: 100,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: "Tiêu đề không quá 100 kí tự.",
                    hintStyle: TextStyle(
                        color: Color.fromARGB(255, 80, 78, 78),
                        fontFamily: 'Inter',
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                    contentPadding: EdgeInsets.only(left: 15),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Nội dung bài viết',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                fontFamily: 'Inter',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.black54, width: 1.0)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 5),
                child: TextField(
                  controller: _contenttxt,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontFamily: 'Inter',
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                  maxLines: 15,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: "Bạn đang nghĩ gì?",
                    hintStyle: TextStyle(
                        color: Color.fromARGB(255, 80, 78, 78),
                        fontFamily: 'Inter',
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                    contentPadding: EdgeInsets.only(left: 15),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.black45, width: 0.5)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: GestureDetector(
                  onTap: () {
                    // _showBottomSheet();
                  },
                  child: Row(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.image,
                        size: 30,
                        color: GlobalColors.ButtonNavigation,
                      ),
                      const SizedBox(
                        width: 17,
                      ),
                      const Text(
                        'Ảnh/video',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Inter'),
                      )
                    ],
                  ),
                ),
              ),
            ),
            // Wrap(
            //   children: [
            //     _buildCard(
            //       context.watch<CreatePostCubit>().state.data!.image,
            //     ),
            //   ],
            // ),
            const SizedBox(
              height: 16,
            ),
            BlocBuilder<EditPostCubit, EditPostState>(
              builder: (context, state) {
                final data = state.data.listTopic;
                return Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.black45, width: 0.5)),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    child: GestureDetector(
                      onTap: () async {
                        if (shouldShowAlertDialog) {
                          await showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: const Text('Chọn thể loại bài viết'),
                                  content: SingleChildScrollView(
                                    child: ListBody(
                                      mainAxis: Axis.vertical,
                                      children: data
                                          .map(
                                            (item) => CheckboxListTile(
                                                value: _vars.contains(item),
                                                title: Text(item.title!),
                                                controlAffinity:
                                                    ListTileControlAffinity
                                                        .leading,
                                                onChanged: (isChecked) {
                                                  Text(item.title!);
                                                  final variant =
                                                      VariantionItem(
                                                    title: item.title,
                                                    id: item.id,
                                                  );
                                                  setState(() {});
                                                }),
                                          )
                                          .toList(),
                                    ),
                                  ),
                                  actions: [
                                    TextButton(
                                      child: const Text('Đóng'),
                                      onPressed: () {
                                        navigator!.pop();
                                      },
                                    )
                                  ],
                                );
                              });
                        }
                      },
                      child: Row(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.brandsFontAwesome,
                            size: 30,
                            color: GlobalColors.ButtonNavigation,
                          ),
                          const SizedBox(
                            width: 17,
                          ),
                          const Text(
                            'Thể loại bài viết',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Inter'),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
            const SizedBox(height: 10),
            // Wrap(
            //   spacing: 5,
            //   runSpacing: 5,
            //   children:
            //       List.generate(_vars.length, (index) => _buildProduct(index)),
            // ),
            const SizedBox(
              height: 16,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.black45, width: 0.5)),
              child: GestureDetector(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text('Thêm Hastag cho bài viết'),
                          content: TextField(
                            controller: _hashtagtxt,
                            decoration: InputDecoration(
                              border: const OutlineInputBorder(),
                              labelText: 'Hastag',
                              suffixIcon: IconButton(
                                onPressed: () {
                                  _hashtagtxt.clear();
                                },
                                icon: const Icon(Icons.clear),
                              ),
                            ),
                          ),
                          actions: [
                            TextButton(
                              child: const Text('Đóng'),
                              onPressed: () {
                                navigator!.pop();
                              },
                            ),
                            TextButton(
                              child: const Text('Thêm'),
                              onPressed: () {
                                setState(() {
                                  _hashtag.add(_hashtagtxt.text);
                                  _hashtagtxt.clear();
                                  navigator!.pop();
                                });
                              },
                            ),
                          ],
                        );
                      });
                },
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: Row(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.hashtag,
                        size: 30,
                        color: GlobalColors.ButtonNavigation,
                      ),
                      const SizedBox(
                        width: 17,
                      ),
                      const Text(
                        'Hashtag',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Inter'),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            // Wrap(
            //   direction: Axis.horizontal,
            //   spacing: 5,
            //   runSpacing: 5,
            //   children: List.generate(
            //       _hashtag.length, (index) => _buildHashtag(index)),
            // ),
            const SizedBox(height: 10),
          ],
        ),
      )),
    );
  }
}
