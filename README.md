# Cat Breeds App

## Descripción

Cat Breeds App es una aplicación móvil desarrollada en Flutter que permite a los usuarios explorar diversas razas de gatos. La aplicación obtiene datos de la API de The Cat API y muestra información detallada sobre cada raza, incluyendo su nombre, descripción e imagen representativa.

## Capturas de Pantalla

![Home Page](screenshots/home_page.png)
![Cat Breed Details](screenshots/cat_breed_details.png)

## Características

- Lista de razas de gatos con imágenes.
- Detalles de cada raza de gato, incluyendo nombre, descripción e imagen.
- Manejo de estado con `provider`.
- Manejo de errores y cargas de datos.

## Instalación

1. Clona el repositorio:
   ```bash
   git clone https://github.com/tu-usuario/cat-breeds-app.git

## Arquitectura

lib/
├── models/
│   └── cat_breed.dart
├── providers/
│   └── cat_breed_provider.dart
├── services/
│   └── cat_api_service.dart
├── views/
│   ├── home_page.dart
│   └── cat_breed_details_page.dart
├── widgets/
│   ├── cat_breed_card.dart
│   └── cat_image_widget.dart
└── main.dart

