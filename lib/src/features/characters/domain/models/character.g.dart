// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Character _$CharacterFromJson(Map<String, dynamic> json) => _Character(
  name: json['name'] as String,
  species: json['species'] as String,
  gender: json['gender'] as String,
  house: json['house'] as String,
  image: json['image'] as String?,
);

Map<String, dynamic> _$CharacterToJson(_Character instance) =>
    <String, dynamic>{
      'name': instance.name,
      'species': instance.species,
      'gender': instance.gender,
      'house': instance.house,
      'image': instance.image,
    };
