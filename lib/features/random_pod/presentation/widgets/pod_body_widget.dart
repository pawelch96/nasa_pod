import 'package:flutter/material.dart';
import 'package:nasa_pod/core/presentation/presentation.dart';
import 'package:nasa_pod/features/random_pod/domain/entities/pod.dart';
import 'package:nasa_pod/features/random_pod/presentation/widgets/pod_bottom_sheet_body.dart';
import 'package:nasa_pod/features/random_pod/presentation/widgets/pod_image.dart';

class PodBodyWidget extends StatelessWidget {
  final Pod pod;
  const PodBodyWidget(
    this.pod, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Positioned.fill(
          child: Center(
            child: PodImage(pod: pod),
          ),
        ),
        Positioned(
          bottom: AppConstants.paddingBig,
          child: IconButton(
            onPressed: () => showModalBottomSheet<void>(
              context: context,
              backgroundColor: Colors.transparent,
              isScrollControlled: true,
              builder: (BuildContext context) => PodBottomSheetBody(pod: pod),
            ),
            icon: const Icon(
              Icons.expand_less,
              size: AppConstants.iconSize,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
