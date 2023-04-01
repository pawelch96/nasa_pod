// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pod_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PodModel _$PodModelFromJson(Map<String, dynamic> json) => PodModel(
      json['copyright'] as String,
      json['date'] as String,
      json['explanation'] as String,
      json['title'] as String,
      json['url'] as String,
      json['hdurl'] as String?,
      json['media_type'] as String,
    );

Map<String, dynamic> _$PodModelToJson(PodModel instance) => <String, dynamic>{
      'copyright': instance.copyright,
      'date': instance.date,
      'explanation': instance.explanation,
      'title': instance.title,
      'url': instance.url,
      'hdurl': instance.hdurl,
      'media_type': instance.mediaType,
    };
