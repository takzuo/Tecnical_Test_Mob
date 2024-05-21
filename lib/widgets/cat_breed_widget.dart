import 'package:flutter/material.dart';
import 'package:tecnical_test_mob/models/cat_breed.dart';

class CatBreedWidget extends StatelessWidget {
  final CatBreed catBreed;

  CatBreedWidget({Key? key, required this.catBreed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget imageWidget;
    if (catBreed.imageUrl.startsWith('assets/')) {
      imageWidget = Image.asset(catBreed.imageUrl); // Usa Image.asset para cargar desde activos
    } else {
      imageWidget = Image.network(catBreed.imageUrl); // Usa Image.network para cargar desde URL
    }

    return Container(
      child: Column(
        children: <Widget>[
          imageWidget,
          Text(catBreed.name),
          Text(catBreed.description),
        ],
      ),
    );
  }
}

