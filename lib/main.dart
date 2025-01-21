import 'package:flutter/material.dart';
import 'WelcomeScreen.dart'; // Экран приветствия
import 'LoginScreen.dart'; // Экран логина
import 'Homescreen.dart'; // Экран главной страницы
import 'ProductDetailsScreen.dart'; // Экран подробностей товара

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Used Zip',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/', // Начальный экран - WelcomeScreen
      routes: {
        '/': (context) =>
            WelcomeScreen(), // Заменили SplashScreen на WelcomeScreen
        '/login': (context) => LoginPage(),
        '/home': (context) => Homescreen(),
        '/product': (context) => ProductDetailsScreen(
              title: 'Product Title',
              description: 'Product Description',
              price: '\$100',
              image: 'assets/product_image.png', //image
            ),
      },
    );
  }
}
