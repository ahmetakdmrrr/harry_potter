import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/models/character.dart';

part 'character_dto.freezed.dart';
part 'character_dto.g.dart';

@freezed
abstract class CharacterDto with _$CharacterDto {
  const factory CharacterDto({
    required String name,
    required String species,
    required String gender,
    required String house,
    String? image,
  }) = _CharacterDto;

  factory CharacterDto.fromJson(Map<String, dynamic> json) =>
      _$CharacterDtoFromJson(json);
}

extension CharacterDtoX on CharacterDto {
  Character toDomain() => Character(
    name: name,
    species: species,
    gender: gender,
    house: house,
    image: image,
  );
}
