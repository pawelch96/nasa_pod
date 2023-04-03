import 'package:flutter/material.dart';
import 'package:nasa_pod/core/presentation/presentation.dart';
import 'package:nasa_pod/features/random_pod/domain/entities/pod.dart';

class PodBottomSheetBody extends StatelessWidget {
  final Pod pod;

  const PodBottomSheetBody({
    super.key,
    required this.pod,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: AppConstants.blackGradient,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(
              Icons.expand_more,
              size: AppConstants.iconSize,
              color: Colors.white,
            ),
          ),
          if (pod.author != null)
            Text(
              pod.author!,
              style: context.bodyLarge,
            ),
          const SizedBox(
            height: AppConstants.paddingSmall,
          ),
          Text(
            pod.date,
            style: context.bodyMedium,
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(
                AppConstants.paddingMedium,
              ),
              child: Text(
                pod.description,
                style: context.bodyMedium,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
