import 'package:flutter/material.dart';

class Intro_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: Column(
          children: [
            SizedBox(
              height: 90,
            ),
            Text(
              'Atlas Monde ',
              style: TextStyle(
                fontSize: 100,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
                fontFamily: "myfont",
              ),
            ),
            SizedBox(
              height: 30,
            ),
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                  print(' Quiz');
                },
                child: Text(
                  'Enter',
                  style: TextStyle(
                    fontSize: 80,
                    color: Color.fromARGB(255, 4, 14, 30),
                    fontWeight: FontWeight.bold,
                    fontFamily: "myfont",
                  ),
                )),
            Center(
              child: Image.asset("assets/images/monde.png"),
            ),
          ],
        ),
      ),
    );
  }
}
