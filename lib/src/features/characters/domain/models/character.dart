import 'package:freezed_annotation/freezed_annotation.dart';

part 'character.freezed.dart';
part 'character.g.dart';  // JSON serileştirme için gerekli

@freezed
abstract class Character with _$Character {
  const factory Character({
    required String name,
    required String species,
    required String gender,
    required String house,
    String? image,
  }) = _Character;
  
  factory Character.fromJson(Map<String, dynamic> json) => 
      _$CharacterFromJson(json);
}