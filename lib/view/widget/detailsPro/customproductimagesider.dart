import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

import '../../../core/constant/imageasset.dart';

class ProductImageSider extends StatelessWidget {
  const ProductImageSider({super.key, required this.productimage});
  final String? productimage;
  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
      indicatorColor: Colors.red,
      indicatorBackgroundColor: Colors.grey[350],
      height: 300,
      // autoPlayInterval: 10000,
      indicatorRadius: 4,
      //  isLoop: true,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8, top: 0),
          child: CachedNetworkImage(
              imageUrl: '${AppImageAsset.imgServer}${productimage}'),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8, top: 0),
          child: CachedNetworkImage(
              imageUrl: '${AppImageAsset.imgServer}${productimage}'),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8, top: 0),
          child: CachedNetworkImage(
              imageUrl: '${AppImageAsset.imgServer}${productimage}'),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8, top: 0),
          child: CachedNetworkImage(
              imageUrl: '${AppImageAsset.imgServer}${productimage}'),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8, top: 0),
          child: CachedNetworkImage(
              imageUrl: '${AppImageAsset.imgServer}${productimage}'),
        ),
      ],
    );
  }
}
