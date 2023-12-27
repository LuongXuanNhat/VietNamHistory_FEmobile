import 'package:flutter/material.dart';

class BuildImage extends StatelessWidget {
  final String image;
  final bool isNetworkImage;
  final double? borderRadius;
  final double? width;
  final double? height;
  final BoxFit? fit;
  const BuildImage(
      {Key? key,
      required this.image,
      this.isNetworkImage = false,
      this.borderRadius = 15,
      this.width,
      this.height,
      this.fit})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius!),
      ),
      child: FadeInImage(
        fit: fit ?? BoxFit.cover,
        placeholder: const AssetImage("assets/images/khampham.png"),
        image: isNetworkImage
            ? NetworkImage(image)
            : AssetImage(image) as ImageProvider,
        imageErrorBuilder: (BuildContext, Object, StackTrace) =>
            Image.asset("assets/images/khampham.png"),
      ),
    );
  }
}
