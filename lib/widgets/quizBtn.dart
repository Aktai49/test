import 'package:flutter/material.dart';

class QuizButton extends StatelessWidget {
  const QuizButton({
    Key? key,
    required this.tuuraBtnbu,
    required this.baskanda,
  }) : super(key: key);

  final bool tuuraBtnbu;
  final void Function(bool) baskanda;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: () => baskanda(tuuraBtnbu),
        style: ElevatedButton.styleFrom(
            backgroundColor: tuuraBtnbu ? Colors.green : Colors.red),
        child: Text(
          tuuraBtnbu ? 'Tuura' : 'Tuura emes',
          style: const TextStyle(fontSize: 26),
        ),
      ),
    );
  }
}
