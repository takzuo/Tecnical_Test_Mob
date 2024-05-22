import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tecnical_test_mob/views/cat_breed_details_page.dart';
import 'package:tecnical_test_mob/widgets/cat_breed_card.dart';
import 'package:tecnical_test_mob/providers/cat_breed_provider.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final catBreedProvider = Provider.of<CatBreedProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Cat Breeds"),
      ),
      body: catBreedProvider.isLoading
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
        itemCount: catBreedProvider.catBreeds.length,
        itemBuilder: (context, index) {
          final breed = catBreedProvider.catBreeds[index];
          return CatBreedCard(
            breed: breed,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CatBreedDetailsPage(breed: breed),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
