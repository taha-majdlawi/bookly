import 'package:bookly_app/core/utils/assets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookItem extends StatelessWidget {
  const CustomBookItem({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 2.6 / 4,
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          fit: BoxFit.fill,
          placeholder:
              (context, url) => Center(child: CircularProgressIndicator()),
          errorWidget: (context, url, error) => Icon(Icons.error, size: 35),
        ),

        // child: Container(
        //   decoration: BoxDecoration(
        //     borderRadius: BorderRadius.circular(16),
        //     image: DecorationImage(
        //       image: NetworkImage(imageUrl),
        //       fit: BoxFit.fill,
        //     ),
        //   ),
        // ),
      ),
    );
  }
}
