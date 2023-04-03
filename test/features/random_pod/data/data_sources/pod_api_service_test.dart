import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mock_web_server/mock_web_server.dart';
import 'package:nasa_pod/features/random_pod/data/data_sources/pod_api_service.dart';

import '../../../../mocks/pod_json.dart';

void main() {
  group('PodApiService', () {
    late MockWebServer server;
    late PodApiService sut;
    setUp(() async {
      server = MockWebServer();
      await server.start();
      final dio = Dio(
        BaseOptions(
          baseUrl: server.url,
        ),
      );
      sut = PodApiService(dio);
    });

    test('getRandomPod', () async {
      server.enqueue(
        body: jsonEncode([podJson]),
        headers: {'Content-Type': 'application/json'},
      );

      final pod = await sut.getRandomPod();
      expect(pod, isNotNull);
      expect(pod.length, 1);
    });

    tearDown(() {
      server.shutdown();
    });
  });
}
