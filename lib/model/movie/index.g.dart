// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'index.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieModel _$MovieModelFromJson(Map<String, dynamic> json) => MovieModel(
      id: (json['id'] as num).toInt(),
      imgUrl: json['imgUrl'] as String,
      publishYear: (json['publishYear'] as num?)?.toInt(),
      durationMin: (json['durationMin'] as num?)?.toInt(),
      type: json['type'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$MovieModelToJson(MovieModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imgUrl': instance.imgUrl,
      'publishYear': instance.publishYear,
      'durationMin': instance.durationMin,
      'type': instance.type,
      'description': instance.description,
    };
