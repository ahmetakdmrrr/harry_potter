import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Dio örneğini sağlayan Riverpod Provider
final dioProvider = Provider<Dio>((ref) {
  final dio = Dio(
    BaseOptions(
      baseUrl: 'https://hp-api.onrender.com/api/', // Harry Potter API'si
      connectTimeout: const Duration(seconds: 5), // Bağlantı zaman aşımı
      receiveTimeout: const Duration(seconds: 3), // Yanıt zaman aşımı
    ),
  );

  // İstek ve yanıtları günlüğe kaydetmek için Interceptor ekleyelim
  dio.interceptors.add(LogInterceptor(
    requestBody: true,
    responseBody: true,
  ));

  return dio;
});