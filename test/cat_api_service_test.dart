import 'package:flutter_test/flutter_test.dart';
import 'package:tecnical_test_mob/models/cat_breed.dart';
import 'package:tecnical_test_mob/services/cat_api_service.dart';
import 'package:mockito/mockito.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'cat_api_service_test.mocks.dart';

@GenerateMocks([http.Client])
void main() {
  group('CatApiService Tests', () {
    test('returns a list of CatBreed if the http call completes successfully', () async {
      final client = MockClient();
      final service = CatApiService(client: client);
      // Simular una respuesta exitosa
      when(client.get(any, headers: anyNamed('headers')))
          .thenAnswer((_) async => http.Response('[{"id":"1","name":"Test Cat","description":"A test cat","image":{"url":"http://example.com/cat.jpg"}}]', 200));

      final breeds = await service.getCatBreeds();
      expect(breeds, isA<List<CatBreed>>());
      expect(breeds.length, 1);
      expect(breeds[0].name, 'Test Cat');
    });

    test('throws an exception if the http call completes with an error', () async {
      final client = MockClient();
      final service = CatApiService(client: client);
      // Simular una respuesta de error
      when(client.get(any, headers: anyNamed('headers')))
          .thenAnswer((_) async => http.Response('Not Found', 404));

      expect(service.getCatBreeds(), throwsException);
    });
  });
}
