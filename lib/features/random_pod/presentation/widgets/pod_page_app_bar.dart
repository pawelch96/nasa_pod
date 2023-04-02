import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nasa_pod/features/random_pod/application/cubit/random_pod_cubit.dart';
import 'package:nasa_pod/generated/l10n.dart';

class PodPageAppBar extends StatelessWidget with PreferredSizeWidget {
  const PodPageAppBar({super.key});

  @override
  Widget build(BuildContext context) => AppBar(
        title: Text(
          S.of(context).appName,
        ),
        actions: [
          IconButton(
            onPressed: () => context.read<RandomPodCubit>().fetchRandomPod(),
            icon: const Icon(
              Icons.refresh,
            ),
          ),
        ],
      );

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
