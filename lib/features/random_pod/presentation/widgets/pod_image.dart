import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:nasa_pod/core/presentation/presentation.dart';
import 'package:nasa_pod/features/random_pod/domain/entities/pod.dart';

class PodImage extends StatelessWidget {
  final Pod pod;
  const PodImage({
    super.key,
    required this.pod,
  });

  @override
  Widget build(BuildContext context) {
    return InteractiveViewer(
      clipBehavior: Clip.none,
      child: CachedNetworkImage(
        placeholder: (_, __) => const AppProgressIndicator(),
        errorWidget: (context, url, error) => Center(
          child: Icon(
            Icons.error,
            size: AppConstants.iconSize,
            color: context.secondaryColor,
          ),
        ),
        imageUrl: pod.hdUrl ?? pod.url,
        fit: BoxFit.fill,
      ),
    );
  }
}
