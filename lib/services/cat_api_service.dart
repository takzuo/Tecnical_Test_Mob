import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/cat_breed.dart';  // Asegúrate de que la ruta al archivo de modelo es correcta

class CatApiService {
  final String baseUrl = 'https://api.thecatapi.com/v1/breeds';
  final String apiKey = 'bda53789-d59e-46cd-9bc4-2936630fde39';

  Future<List<CatBreed>> getCatBreeds() async {
    try {
      final response = await http.get(
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
      rethrow;  // Puedes optar por manejar el error de manera diferente
    }
  }
}

