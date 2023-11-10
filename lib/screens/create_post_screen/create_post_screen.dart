import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:after_layout/after_layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../common/global_colors.dart';
import '../../common/ui_helpers.dart';
import '../../models/post/response/add_post_response.dart';
import '../../route_generator.dart';
import '../../widgets/custom_textfield.dart';
import 'cubit/create_post_cubit.dart';
import 'wigets/topic_card.dart';

class CreatePostScreen extends StatefulWidget {
  static BlocProvider<CreatePostCubit> provider() {
    return BlocProvider(
      create: (context) => CreatePostCubit(),
      child: const CreatePostScreen(),
    );
  }

  const CreatePostScreen({super.key});

  @override
  State<CreatePostScreen> createState() => _CreatePostScreenState();
}

class _CreatePostScreenState extends State<CreatePostScreen>
    with AfterLayoutMixin {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  final TextEditingController _hashtagtxt = TextEditingController();
  final TextEditingController _titletxt = TextEditingController();
  final TextEditingController _contenttxt = TextEditingController();
  final List<VariantionItem> _vars = [];
  final List<String> _hashtag = [];
  bool shouldShowAlertDialog = true;
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    context.read<CreatePostCubit>().getTopics();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      appBar: AppBar(
        flexibleSpace: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Builder(
                  builder: (context) => Container(
                    decoration: BoxDecoration(
                      color: GlobalColors.colorButton1,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: BlocBuilder<CreatePostCubit, CreatePostState>(
                      builder: (context, state) {
                        return TextButton(
                          onPressed: () {
                            List<String> tags = [];
                            for (var i = 0; i < _hashtag.length; i++) {
                              Tag tag = Tag(name: _hashtag[i]);
                              tags.add(tag.name.toString());
                            }
                            context.read<CreatePostCubit>().addPost(
                                title: _titletxt.text,
                                content: _contenttxt.text,
                                image: context
                                    .read<CreatePostCubit>()
                                    .state
                                    .data!
                                    .image!,
                                topicId: _vars[0].id!,
                                tag: tags);
                          },
                          child: const Text(
                            'Đăng',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Inter',
                                color: Colors.white),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        //   foregroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Tạo bài viết",
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
                    _showBottomSheet();
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
            Wrap(
              children: [
                _buildCard(
                  context.watch<CreatePostCubit>().state.data!.image,
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            BlocBuilder<CreatePostCubit, CreatePostState>(
              builder: (context, state) {
                final data = state.data!.listTopic;
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
                                                  setState(() {
                                                    _vars.add(variant);
                                                    navigator!.pop();
                                                    shouldShowAlertDialog =
                                                        false;
                                                  });
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
            Wrap(
              spacing: 5,
              runSpacing: 5,
              children:
                  List.generate(_vars.length, (index) => _buildProduct(index)),
            ),
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
            Wrap(
              direction: Axis.horizontal,
              spacing: 5,
              runSpacing: 5,
              children: List.generate(
                  _hashtag.length, (index) => _buildHashtag(index)),
            ),
            const SizedBox(height: 10),
          ],
        ),
      )),
    );
  }

  Widget _buildHashtag(index) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.black45, width: 0.5),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
            child: Text(_hashtag[index]),
          ),
          InkWell(
            onTap: () {
              setState(() {
                _hashtag.removeAt(index);
              });
            },
            child: const Icon(
              Icons.close_rounded,
              size: 17,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProduct(index) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.black45, width: 0.5),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
                child: Text(_vars[index].title!),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    _vars.removeAt(index);
                    shouldShowAlertDialog = true;
                  });
                },
                child: const Icon(
                  Icons.close_rounded,
                  size: 17,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  void _showBottomSheet() {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      ),
      builder: (_) {
        return ListView(
          shrinkWrap: true,
          padding:
              EdgeInsets.only(top: Get.height * .03, bottom: Get.height * .05),
          children: [
            const Text(
              'Chọn ảnh từ',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: Get.height * .02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: const CircleBorder(),
                      fixedSize: Size(Get.width * .3, Get.height * .15)),
                  onPressed: () async {
                    await context
                        .read<CreatePostCubit>()
                        .selectImage(ImageSource.gallery);
                  },
                  child: Image.asset('assets/images/add_image.png'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: const CircleBorder(),
                      fixedSize: Size(Get.width * .3, Get.height * .15)),
                  onPressed: () async {
                    await context
                        .read<CreatePostCubit>()
                        .selectImage(ImageSource.camera);
                  },
                  child: Image.asset('assets/images/camera.png'),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            )
          ],
        );
      },
    );
  }

  Widget _buildCard(File? source) {
    if (source != null) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(4),
            topRight: Radius.circular(4),
          ),
          child: Image.file(
            source,
            fit: BoxFit.fill,
            height: 200,
            width: 350,
          ),
        ),
      );
    } else {
      return Container();
    }
  }
}
