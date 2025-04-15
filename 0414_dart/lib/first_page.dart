import 'package:a_6_1/Person.dart';
import 'package:a_6_1/second_page.dart';
import 'package:a_6_1/Person.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  final Person? person;

  const FirstPage({super.key, this.person});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('FirstPage')),
      body: Text('!'),
      floatingActionButton: ElevatedButton(
        onPressed:
            () async {
              final person = Person('홍길동', 20);

              // var result = Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => SecondPage()),
              // );
              var result = await Navigator.pushNamed(context, '/second', arguments: person);

              print(result);
            },
        child: Text('다음 페이지로'),
      ),
    );
  }
}
