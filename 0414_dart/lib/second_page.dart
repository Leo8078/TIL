import 'package:flutter/material.dart';
import 'package:a_6_1/Person.dart';

class SecondPage extends StatelessWidget {
  final Person? person;

  const SecondPage({super.key, this.person});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SecondPage')),
      body: Text('${person?.name}, ${person?.age}'),
      floatingActionButton: ElevatedButton(
        onPressed: () {
          Navigator.pop(context, "동작했음");
        },
        child: Text('이전 페이지로'),
      ),
    );
  }
}
