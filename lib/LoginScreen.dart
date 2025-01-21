import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Заголовок
              Container(
                color: Colors.orange,
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Center(
                  child: Text(
                    'USED ZIP',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              // Иконка пакета
              Image.asset(
                'assets/shopping_bag.png', // Укажите путь к изображению
                height: 100,
              ),
              SizedBox(height: 20),
              // Текст "Let's Sign In"
              Text(
                "Let's Sign in",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20),
              // Поле Email
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: 'Email',
                    prefixIcon: Icon(Icons.email),
                  ),
                ),
              ),
              SizedBox(height: 15),
              // Поле Password
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: 'Password',
                    prefixIcon: Icon(Icons.lock),
                  ),
                ),
              ),
              SizedBox(height: 20),
              // Кнопка Sign In
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      padding: EdgeInsets.symmetric(vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/home');
                    },
                    child: Text(
                      'Sign in',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              // Разделитель OR
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      indent: 40,
                      endIndent: 10,
                    ),
                  ),
                  Text(
                    'OR',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      indent: 10,
                      endIndent: 40,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              // Кнопки Sign Up и Password Reset
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {},
                    child:
                        Text('Sign Up', style: TextStyle(color: Colors.white)),
                  ),
                  SizedBox(width: 20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {},
                    child: Text('Password Reset',
                        style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
              SizedBox(height: 40),
              // Логотип WorldSkills
              Image.asset(
                'assets/worldskills_logo.png',
                height: 50,
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
