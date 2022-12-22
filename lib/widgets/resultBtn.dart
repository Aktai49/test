import 'package:flutter/material.dart';

class ResultIcon extends StatelessWidget {
  const ResultIcon({
    Key? key,
    required this.tuurIconbu,
  }) : super(key: key);
  final bool tuurIconbu;

  @override
  Widget build(BuildContext context) {
    return Icon( 
      tuurIconbu ? Icons.check : Icons.close,
      color: tuurIconbu ? Colors.green : Colors.red,
    );
  }
}
