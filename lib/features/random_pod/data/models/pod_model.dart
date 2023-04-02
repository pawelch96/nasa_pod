import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nasa_pod/core/domain/domain.dart';
import 'package:nasa_pod/features/random_pod/domain/entities/pod.dart';

part 'pod_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class PodModel implements DtoModel<Pod> {
  final String? copyright;
  final String date;
  final String explanation;
  final String title;
  final String url;
  final String? hdurl;
  final String? thumbnailUrl;
  final String mediaType;

  PodModel(
    this.copyright,
    this.date,
    this.explanation,
    this.title,
    this.url,
    this.hdurl,
    this.thumbnailUrl,
    this.mediaType,
  );

  factory PodModel.fromJson(Map<String, dynamic> json) =>
      _$PodModelFromJson(json);

  Map<String, dynamic> toJson() => _$PodModelToJson(this);

  @override
  Pod map() => Pod(
        copyright,
        title,
        date,
        explanation,
        url,
        hdurl,
        thumbnailUrl,
        MediaType.values.firstWhere((element) => element.name == mediaType),
      );
}
