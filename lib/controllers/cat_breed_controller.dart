
import 'package:tecnical_test_mob/models/cat_breed.dart';
import 'package:tecnical_test_mob/services/cat_api_service.dart';

class CatBreedController {
  final CatApiService apiService = CatApiService();
  List<CatBreed> catBreeds = [];

  Future<void> fetchCatBreeds() async {
    catBreeds = await apiService.getCatBreeds();
  }
}
