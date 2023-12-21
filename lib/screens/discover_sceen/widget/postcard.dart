import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../common/assets.dart';
import '../../../models/post/discover/response/list_discover_response.dart';

class PostCard extends StatelessWidget {
  final ResultObj post;
  final VoidCallback onTap;
  const PostCard({super.key, required this.post, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.1),
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                            image: NetworkImage(post.userShort!.image!),
                            fit: BoxFit.cover)),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        post.userShort!.fullName!,
                        style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        '• ${post.createdAt!.day}/${post.createdAt!.month}/${post.createdAt!.year}',
                        style:
                            const TextStyle(fontSize: 12, color: Colors.grey),
                      )
                    ],
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  Expanded(
                    child: Container(
                      height: 25,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.grey.withOpacity(0.1)),
                      child: Text(
                        post.topicName.toString(),
                        style:
                            const TextStyle(fontSize: 14, color: Colors.blue),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    ),
                  ),
                  const SizedBox(width: 5),
                ],
              ),
              const SizedBox(height: 10),
              Text(
                post.title!,
                style: const TextStyle(
                  fontFamily: "Mulish",
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 5),
              Hero(
                tag: post.id!,
                child: Container(
                  height: 140,
                  width: double.maxFinite,
                  alignment: Alignment.topRight,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: NetworkImage(post.image!), fit: BoxFit.cover)),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  SvgPicture.asset(CustomAssets.kHeart),
                  const SizedBox(width: 2),
                  Text(post.likeNumber.toString()),
                  const SizedBox(width: 10),
                  SvgPicture.asset(CustomAssets.kChat, height: 25),
                  const SizedBox(width: 2),
                  Text(post.commentNumber.toString()),
                  const SizedBox(width: 10),
                  SvgPicture.asset(CustomAssets.kEye, height: 25),
                  const SizedBox(width: 2),
                  Text(post.viewNumber.toString()),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
