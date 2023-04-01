part of 'random_pod_cubit.dart';

@freezed
class RandomPodState with _$RandomPodState {
  const factory RandomPodState.initial() = _Initial;
  const factory RandomPodState.error() = _Error;
  const factory RandomPodState.podFetched(Pod pod) = _PodFetched;
}
