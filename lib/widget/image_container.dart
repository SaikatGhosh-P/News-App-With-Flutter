import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  ImageContainer({
    this.height,
    this.borderRadius = 20,
    this.width,
    this.margin,
    this.padding,
    this.imageUrl,
    this.child,
  });

  final double? height;
  final double? width;
  final double? borderRadius;
  final String? imageUrl;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      padding: padding,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image:
            DecorationImage(image: NetworkImage(imageUrl!), fit: BoxFit.cover),
      ),
      child: child,
    );
  }
}
