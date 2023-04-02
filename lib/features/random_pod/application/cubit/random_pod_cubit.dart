import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nasa_pod/core/domain/domain.dart';
import 'package:nasa_pod/features/random_pod/domain/entities/pod.dart';
import 'package:nasa_pod/features/random_pod/domain/usecases/get_random_pod.dart';

part 'random_pod_cubit.freezed.dart';
part 'random_pod_state.dart';

class RandomPodCubit extends Cubit<RandomPodState> {
  final GetRandomPod getRandomPod;
  RandomPodCubit(
    this.getRandomPod,
  ) : super(
          const RandomPodState.initial(),
        );

  Future<void> fetchRandomPod() async {
    emit(const RandomPodState.initial());

    final result = await getRandomPod.call(NoParams());

    emit(
      result.fold(
        (pod) => RandomPodState.podFetched(pod),
        (error) => const RandomPodState.error(),
      ),
    );
  }
}
