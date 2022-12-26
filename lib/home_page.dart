

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
  int index = 0;
  List jooptor = <bool>[];
  List tuuraJooptor = <bool>[];
  List kataJooptor = <bool>[];

  void teksher(bool value) {
    if (quizzes[index].answer == value) {
      jooptor.add(true);
      tuuraJooptor.add(true);
    } else {
      jooptor.add(false);
      kataJooptor.add(false);
    }
    setState(() {
      if (quizzes[index] == quizzes.last) {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: const Text('Test jyiyntygy:'),
                content: Text(
                    'tuura jooptor ${tuuraJooptor.length}.Kata jooptor ${kataJooptor.length}'),
                actions: [
                  TextButton(
                      onPressed: () {
                        setState(() {
                          index = 0;
                          jooptor.clear();
                          tuuraJooptor.clear();
                          kataJooptor.clear();
                          Navigator.pop(context);
                        });
                      },
                      child: const Text('Janydan bashtoo'))
                ],
              );
            });
        index = 0;
      } else {
        index++;
      }
    });
  }

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
            QuizButton(
              tuuraBtnbu: true,
              baskanda: (maani) {
                teksher(maani);
              },
            ),
            const SizedBox(
              height: 20,
            ),
            QuizButton(
              tuuraBtnbu: false,
              baskanda: (maani) {
                teksher(maani);
              },
            ),
            const SizedBox(height: 50),
            SizedBox(
              height: 40,
              child: ListView.builder(
                  itemCount: jooptor.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, i) {
                    return jooptor[i]
                        ? const ResultIcon(tuurIconbu: true)
                        : const ResultIcon(tuurIconbu: false);
                  }),
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
