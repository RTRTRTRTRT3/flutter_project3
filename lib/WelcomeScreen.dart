import 'package:flutter/material.dart';
import 'LoginScreen.dart'; // Импортируем LoginScreen для перехода

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'USED ZIP',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/login'); // Переход на /login
              },
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Text(
                    'Best used trading anywhere in the world.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
