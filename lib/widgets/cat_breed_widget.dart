import 'package:flutter/material.dart';
import 'package:tecnical_test_mob/models/cat_breed.dart';
import 'package:tecnical_test_mob/widgets/cat_image_widget.dart';

class CatBreedWidget extends StatelessWidget {
  final CatBreed catBreed;

  CatBreedWidget({Key? key, required this.catBreed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          CatImageWidget(imageUrl: catBreed.imageUrl),
          Text(catBreed.name),
          Text(catBreed.description),
        ],
      ),
    );
  }
}
