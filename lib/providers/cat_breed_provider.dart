import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tecnical_test_mob/models/cat_breed.dart';
import 'package:tecnical_test_mob/services/cat_api_service.dart';

class CatBreedProvider with ChangeNotifier {
  final CatApiService _apiService = CatApiService();
  List<CatBreed> _catBreeds = [];

  List<CatBreed> get catBreeds => _catBreeds;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  CatBreedProvider() {
    fetchCatBreeds();
  }

  Future<void> fetchCatBreeds() async {
    _isLoading = true;
    notifyListeners();
    try {
      _catBreeds = await _apiService.getCatBreeds();
      _isLoading = false;
      notifyListeners();
    } catch (e) {
      _isLoading = false;
      notifyListeners();
      // Aquí se podría manejar el error, por ejemplo, mostrando un mensaje en la UI.
      print('Failed to fetch cat breeds: $e');
    }
  }
}
