import 'package:flutter_test/flutter_test.dart';
import 'package:tecnical_test_mob/models/cat_breed.dart';

void main() {
  group('CatBreed Tests', () {
    test('fromJson returns a valid instance when all values are provided', () {
      Map<String, dynamic> json = {
        'id': '1',
        'name': 'Test Cat',
        'description': 'A test cat',
        'image': {'url': 'http://example.com/cat.jpg'}
      };

      CatBreed breed = CatBreed.fromJson(json);
      expect(breed.name, 'Test Cat');
      expect(breed.description, 'A test cat');
      expect(breed.imageUrl, 'http://example.com/cat.jpg');
    });

    test('fromJson handles missing description', () {
      Map<String, dynamic> json = {
        'id': '1',
        'name': 'Test Cat',
        'image': {'url': 'http://example.com/cat.jpg'}
      };

      CatBreed breed = CatBreed.fromJson(json);
      expect(breed.description, 'No description available');
    });
  });
}
