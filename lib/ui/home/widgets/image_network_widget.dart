import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../config/app_colors.dart';

class ImageNetworkWidget extends StatelessWidget {
  ImageNetworkWidget({
    super.key,
    required this.imageUrl,
    this.height,
    this.width,
  });

  final String imageUrl;
  double? height;
  double? width;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      fit: BoxFit.fill,
      imageUrl: imageUrl,
      width: width,
      height: height,
      placeholder: (context, url) => const Center(
        child: CircularProgressIndicator(
          color: AppColors.whiteColor,
        ),
      ),
      errorWidget: (context, url, error) => const Placeholder(
        color: AppColors.whiteColor,
      ),
    );
  }
}
