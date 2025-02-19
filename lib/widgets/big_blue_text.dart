import 'package:flutter/material.dart';

class BigBlueText extends StatefulWidget {
  final String text;
  const BigBlueText({super.key, required this.text});

  @override
  BigBlueTextState createState() => BigBlueTextState();
}

class BigBlueTextState extends State<BigBlueText> {
  String formattedText = '';
  @override
  void initState() {
    super.initState();
    print('[BigBlueText] initState');
    formattedText = '[${widget.text}]';
  }

  @override
  void didUpdateWidget(BigBlueText oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('[BigBlueText] didUpdateWidget');
    formattedText = '[${widget.text}]';
  }

  @override
  void dispose() {
    super.dispose();
    print('[BigBlueText] dispose');
  }

  @override
  Widget build(BuildContext context) {
    print('[BigBlueText] build');
    return Text(
      formattedText,
      style: const TextStyle(
        fontSize: 32,
        color: Colors.blue,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
