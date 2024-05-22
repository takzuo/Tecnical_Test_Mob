import 'package:flutter/material.dart';
import 'package:tecnical_test_mob/models/cat_breed.dart';

class CatBreedDetailsPage extends StatelessWidget {
  final CatBreed breed;

  CatBreedDetailsPage({Key? key, required this.breed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(breed.name), // Mostramos el nombre de la raza como título
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 2),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(breed.imageUrl, height: 250, fit: BoxFit.cover),
                ),
              ),
            ),
            SizedBox(height: 8),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Center(
                    child: Text(
                      breed.description,
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
