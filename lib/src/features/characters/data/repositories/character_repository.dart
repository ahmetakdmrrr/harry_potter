import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../datasources/character_api.dart';
import '../../domain/models/character.dart';

final characterRepositoryProvider = Provider<CharacterRepository>((ref) {
  final characterApi = ref.read(characterApiProvider);
  return CharacterRepository(characterApi);
});

class CharacterRepository {
  final CharacterApi _characterApi;

  CharacterRepository(this._characterApi);

  Future<List<Character>> getCharacters() async {
    try {
      return await _characterApi.getCharacters();
    } catch (e) {
      throw Exception('Karakterler yüklenirken bir hata oluştu: $e');
    }
  }
}
