import 'package:flutter/material.dart';
import 'package:tecnical_test_mob/models/cat_breed.dart';
import 'package:tecnical_test_mob/widgets/cat_image_widget.dart';

class CatBreedCard extends StatelessWidget {
  final CatBreed breed;
  final VoidCallback onTap;

  CatBreedCard({Key? key, required this.breed, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        margin: EdgeInsets.all(8.0),
        elevation: 4.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CatImageWidget(imageUrl: breed.imageUrl),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    breed.name,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    breed.description,
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
