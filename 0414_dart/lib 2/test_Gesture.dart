import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TestGesture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GestureDerector, InkWell 테스트')),
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              print('GestureDetector');
            },
            child: Text('클릭 돼?'),
          ),

          SizedBox(height: 80),

          InkWell(
            onTap: () {
              print('InkWell');
            },
            child: Text('클릭 돼?'),

          ),
        ],
      ),
    );
  }
}
