import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: sized_box_for_whitespace
      body: Container(
        color: Colors.deepPurple,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                "assets/images/quiz-logo.png",
                width: 300,
                color: Color.fromARGB(100, 241, 10, 10),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Learn Flutter the fun way",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.arrow_circle_right),
                label: Text("Start Quiz"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
