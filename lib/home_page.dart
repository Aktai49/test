import 'package:flutter/material.dart';
import 'package:test/model/quizMod.dart';
import 'package:test/widgets/quizBtn.dart';
import 'package:test/widgets/resultBtn.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 13, 10, 51),
      appBar: _appBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            const Spacer(),
            Text(
              quizzes[index].questions,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.white, fontSize: 30),
            ),
            const SizedBox(
              height: 100,
            ),
            const QuizButton(
              tuuraBtnbu: true,
            ),
            const SizedBox(
              height: 20,
            ),
            const QuizButton(
              tuuraBtnbu: false,
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                ResultIcon(tuurIconbu: true),
                ResultIcon(tuurIconbu: false),
              ],
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      backgroundColor: const Color.fromARGB(255, 13, 10, 51),
      title: const Text(
        'Tapshyrma 7',
        style: TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
    );
  }
}
