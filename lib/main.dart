import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

//Peter到此一遊
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Container(
              color: Colors.blue[100],
              padding: EdgeInsets.symmetric(vertical: 32, horizontal: 8),
              child: Image.asset(
                'assets/images/smartman_logo.jpg',
                width: double.infinity,
                height: 80,
              ),
            ),
            Text('Flutter共用起始專案123共用起始專案',
                style: TextStyle(
                  fontSize: 24,
                )),
          ],
        ),
      ),
    );
  }
}
