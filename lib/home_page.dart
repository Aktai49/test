import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 13, 10, 51),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 13, 10, 51),
        title: const Text(
          'Tapshyrma 7',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(
              height: 150,
            ),
            Text(
              'Kg 7 obl barby?',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            SizedBox(
              height: 100,
            ),
            QuizButton(tuuraBtn: true,),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
                child: Text(
                  'Kata',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
            Row(
              children: [
                Icon(
                  Icons.mail,
                  color: Colors.green,
                ),
                Icon(
                  Icons.close,
                  color: Colors.red,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class QuizButton extends StatelessWidget {
  const QuizButton({
    Key? key,
    required this.tuuraBtn,
  }) : super(key: key);

  final bool tuuraBtn;

  @override
  Widget build(BuildContext context) {
    if (tuuraBtn == true) {
      'tuura';}
    else{
      'kata';
    }

    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            backgroundColor: tuuraBtn ? Colors.green : Colors.red),
        child: Text(
          'Tuura',
          style: TextStyle(fontSize: 26),
        ),
      ),
    );
  }
}
