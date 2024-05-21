import 'package:flutter_test/flutter_test.dart';
import 'package:tecnical_test_mob/models/cat_breed.dart';
import 'package:tecnical_test_mob/services/cat_api_service.dart';
import 'package:mockito/mockito.dart';
import 'package:http/http.dart' as http;

// Crear una clase Mock para simular las respuestas HTTP
class MockClient extends Mock implements http.Client {}

void main() {
  group('CatApiService Tests', () {
    test('returns a list of CatBreed if the http call completes successfully', () async {
      final client = MockClient();
      final service = CatApiService(client: client);
      // Simular una respuesta exitosa
      when(client.get(any, headers: anyNamed('headers')))
          .thenAnswer((_) async => http.Response('[{"id":"1","name":"Test Cat","description":"A test cat","image":{"url":"http://example.com/cat.jpg"}}]', 200));

      expect(await service.getCatBreeds(), isA<List<CatBreed>>());
    });

    test('throws an exception if the http call completes with an error', () {
      final client = MockClient();
      final service = CatApiService(client: client);
      // Simular una respuesta de error
      when(client.get(any, headers: anyNamed('headers')))
          .thenAnswer((_) async => http.Response('Not Found', 404));

      expect(service.getCatBreeds(), throwsException);
    });
  });
}
