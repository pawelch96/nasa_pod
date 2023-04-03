import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nasa_pod/core/presentation/presentation.dart';
import 'package:nasa_pod/features/random_pod/application/cubit/random_pod_cubit.dart';
import 'package:nasa_pod/features/random_pod/presentation/widgets/pod_body_widget.dart';
import 'package:nasa_pod/features/random_pod/presentation/widgets/pod_error_widget.dart';
import 'package:nasa_pod/features/random_pod/presentation/widgets/pod_page_app_bar.dart';
import 'package:nasa_pod/injection/injection.dart';

class RandomPodPage extends StatelessWidget {
  const RandomPodPage({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider<RandomPodCubit>(
        create: (context) => RandomPodCubit(
          getIt.get(),
        )..fetchRandomPod(),
        child: const RandomPodPageContent(),
      );
}

class RandomPodPageContent extends StatelessWidget {
  const RandomPodPageContent({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: const PodPageAppBar(),
        body: BlocBuilder<RandomPodCubit, RandomPodState>(
          builder: (context, state) => state.when(
            initial: () => const AppProgressIndicator(),
            error: () => const PodErrorWidget(),
            podFetched: (pod) => PodBodyWidget(pod),
          ),
        ),
      );
}
