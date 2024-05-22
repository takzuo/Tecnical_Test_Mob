import 'package:flutter/material.dart';

class CatImageWidget extends StatelessWidget {
  final String imageUrl;

  CatImageWidget({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    Widget imageWidget;
    if (imageUrl.startsWith('assets/')) {
      imageWidget = Image.asset(imageUrl); // Usa Image.asset para cargar desde activos
    } else {
      imageWidget = Image.network(imageUrl); // Usa Image.network para cargar desde URL
    }

    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 2),
        borderRadius: BorderRadius.circular(8),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: imageWidget,
      ),
    );
  }
}
