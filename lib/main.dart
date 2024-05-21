import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'views/home_page.dart';
import 'providers/cat_breed_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CatBreedProvider(),
      child: MaterialApp(
        title: 'Cat Breed',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage(),
      ),
    );
  }
}
