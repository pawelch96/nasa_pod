import 'package:flutter_test/flutter_test.dart';
import 'package:nasa_pod/features/random_pod/data/models/pod_model.dart';
import 'package:nasa_pod/features/random_pod/domain/entities/pod.dart';

import '../../../../mocks/pod_json.dart';

void main() {
  group('PodModel', () {
    late PodModel sut;

    setUp(() {
      sut = PodModel.fromJson(podJson);
    });

    test('parse json correctly', () {
      expect(sut.copyright, podJson['copyright']);
      expect(sut.date, podJson['date']);
      expect(sut.title, podJson['title']);
      expect(sut.url, podJson['url']);
      expect(sut.hdurl, podJson['hdurl']);
      expect(sut.thumbnailUrl, podJson['thumbnail_url']);
      expect(sut.explanation, podJson['explanation']);
      expect(sut.mediaType, podJson['media_type']);
    });

    test('map model to entity correctly', () {
      Pod actual = sut.map();
      expect(actual.author, sut.copyright);
      expect(actual.date, sut.date);
      expect(actual.title, sut.title);
      expect(actual.url, sut.url);
      expect(actual.hdUrl, sut.hdurl);
      expect(actual.thumbnail, sut.thumbnailUrl);
      expect(actual.description, sut.explanation);
      expect(
        actual.mediaType,
        MediaType.values.firstWhere(
          (element) => element.name == sut.mediaType,
        ),
      );
    });
  });
}
