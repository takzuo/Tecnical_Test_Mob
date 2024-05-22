import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:tecnical_test_mob/models/cat_breed.dart';

class CatApiService {
  final String baseUrl = 'https://api.thecatapi.com/v1/breeds';
  final String apiKey = 'bda53789-d59e-46cd-9bc4-2936630fde39';
  final http.Client client;

  CatApiService({http.Client? client}) : client = client ?? http.Client();

  Future<List<CatBreed>> getCatBreeds() async {
    try {
      final response = await client.get(
        Uri.parse(baseUrl),
        headers: {'x-api-key': apiKey},
      );

      if (response.statusCode == 200) {
        List<dynamic> breedsJson = json.decode(response.body);
        return breedsJson.map((json) => CatBreed.fromJson(json)).toList();
      } else {
        throw Exception('Failed to load cat breeds with status code: ${response.statusCode}');
      }
    } catch (e) {
      print('Error occurred while fetching cat breeds: $e');
      rethrow; //TODO mejorar manejo de errores
    }
  }
}
