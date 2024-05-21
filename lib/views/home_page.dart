import 'package:flutter/material.dart';
import 'package:tecnical_test_mob/controllers/cat_breed_controller.dart';
import 'package:tecnical_test_mob/views/cat_breed_details_page.dart';
import 'package:tecnical_test_mob/widgets/cat_breed_card.dart';

class HomePage extends StatelessWidget {
  final CatBreedController controller = CatBreedController();

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cat Breeds"),
      ),
      body: FutureBuilder(
        future: controller.fetchCatBreeds(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              return Text("Error: ${snapshot.error}");
            } else {
              return ListView.builder(
                itemCount: controller.catBreeds.length,
                itemBuilder: (context, index) {
                  final breed = controller.catBreeds[index];
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
              );
            }
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
