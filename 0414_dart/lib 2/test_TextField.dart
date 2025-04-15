import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TestTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('TextField 테스트')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(),

            TextField(decoration: InputDecoration(labelText: '여기에 입력하세요')),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: '여기도 입력하세요',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
