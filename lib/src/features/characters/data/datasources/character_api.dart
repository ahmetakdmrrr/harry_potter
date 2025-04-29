// lib/src/features/characters/data/datasources/character_api.dart

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/models/character.dart';
import '../models/character_dto.dart';
import '../../../../shared/providers/dio_provider.dart';

// CharacterApi provider'ı, Dio ile veri çekimini sağlar
final characterApiProvider = Provider<CharacterApi>((ref) {
  final dio = ref.read(dioProvider);
  return CharacterApi(dio);
});

class CharacterApi {
  final Dio _dio;

  CharacterApi(this._dio);

  // API'den karakter verilerini çeken metod
  Future<List<Character>> getCharacters() async {
    try {
      final response = await _dio.get('/characters');
      if (response.statusCode == 200) {
        final List<dynamic> data = response.data;
        // JSON verisini Character nesnelerine dönüştürüyoruz
        final characters = data.map((json) => CharacterDto.fromJson(json).toDomain()).toList();
        return characters;
      } else {
        throw Exception('Karakterler yüklenemedi: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Karakterler çekilirken hata oluştu: $e');
    }
  }
}