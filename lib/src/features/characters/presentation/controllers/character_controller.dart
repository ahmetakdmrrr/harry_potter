import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../data/repositories/character_repository.dart';
import '../../domain/models/character.dart';

final characterControllerProvider =
    StateNotifierProvider<CharacterController, AsyncValue<List<Character>>>((
      ref,
    ) {
      final repository = ref.read(characterRepositoryProvider);
      return CharacterController(repository);
    });

class CharacterController extends StateNotifier<AsyncValue<List<Character>>> {
  final CharacterRepository _repository;

  CharacterController(this._repository) : super(const AsyncValue.loading()) {
    loadCharacters();
  }

  Future<void> loadCharacters() async {
    try {
      state = const AsyncValue.loading();
      final characters = await _repository.getCharacters();
      state = AsyncValue.data(characters);
    } catch (error, stackTrace) {
      state = AsyncValue.error(error, stackTrace);
    }
  }

  Future<void> refreshCharacters() async {
    await loadCharacters();
  }
}
