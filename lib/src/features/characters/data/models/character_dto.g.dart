// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CharacterDto _$CharacterDtoFromJson(Map<String, dynamic> json) =>
    _CharacterDto(
      name: json['name'] as String,
      species: json['species'] as String,
      gender: json['gender'] as String,
      house: json['house'] as String,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$CharacterDtoToJson(_CharacterDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'species': instance.species,
      'gender': instance.gender,
      'house': instance.house,
      'image': instance.image,
    };
