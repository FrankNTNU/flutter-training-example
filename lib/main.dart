import 'package:flutter/material.dart';
import 'package:flutter_training_example/widgets/big_blue_text.dart';
import 'package:faker/faker.dart' show Faker;

void main() {
  runApp(const MainApp());
}

//Peter到此一遊
class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  var faker = Faker();
  int counter = 0;
  void doSomething(int i) {
    print('點下去第$i顆星星了!!!');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: [
            for (var i = 0; i < 10; i++)
              BigBlueText(text: faker.internet.email()),
            Container(
              color: Colors.blue[100],
              padding: EdgeInsets.symmetric(vertical: 32, horizontal: 8),
              child: Image.asset(
                'assets/images/smartman_logo.jpg',
                width: double.infinity,
                height: 80,
              ),
            ),
            if (counter == 10)
              BigBlueText(text: 'Empty')
            else
              BigBlueText(text: 'Counter: $counter'),
            IconButton(
                onPressed: () {
                  setState(() {
                    counter++;
                  });
                },
                icon: Icon(Icons.plus_one)),
          ],
        ),
      ),
    );
  }
}
