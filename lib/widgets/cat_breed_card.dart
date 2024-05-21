import 'package:flutter/material.dart';
import 'package:tecnical_test_mob/models/cat_breed.dart';

class CatBreedCard extends StatelessWidget {
  final CatBreed breed;
  final VoidCallback onTap;

  CatBreedCard({Key? key, required this.breed, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      title: Text(breed.name),
      subtitle: Text(breed.description),
      leading: Image.network(breed.imageUrl, width: 50, height: 50, fit: BoxFit.cover),
    );
  }
}
