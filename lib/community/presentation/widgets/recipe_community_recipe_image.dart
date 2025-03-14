import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../data/models/recipe_community_model.dart';
import 'recipe_community_heart_item.dart';

class RecipeCommunityImage extends StatelessWidget {
  const RecipeCommunityImage({super.key, required this.model});

  final RecipeCommunityModel model;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
          child: CachedNetworkImage(
            imageUrl: model.photo,
            fit: BoxFit.cover,
            height: 173.h,
            width: double.infinity,
            progressIndicatorBuilder: (context, url, progress) {
              return Center(
                child: CircularProgressIndicator(
                  value: progress.progress,
                  color: Colors.white,
                ),
              );
            },
            errorWidget: (context, url, error) =>
                Icon(Icons.error, color: Colors.red),
          ),
        ),
        Positioned(top: 11, right: 13, child: RecipeCommunityHeartItem(isLike: false))
      ],
    );
  }
}
