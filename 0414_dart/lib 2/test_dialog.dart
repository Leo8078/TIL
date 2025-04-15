import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TestDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('dialog 테스트')),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () async {
              var result = await showDialog(
                context: context,
                barrierDismissible: false,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('제목'),
                    content: SingleChildScrollView(
                      child: ListBody(
                        children: [
                          Text('Alert Dialog입니다.'),
                          Text('OK를 눌러 닫습니다.'),
                        ],
                      ),
                    ),
                    actions: [
                      TextButton(
                        child: Text('OK'),
                        onPressed: () {
                          Navigator.of(context).pop(true);
                        },
                      ),
                      TextButton(
                        child: Text('Cancel'),
                        onPressed: () {
                          Navigator.of(context).pop(false);
                        },
                      ),
                    ],
                  );
                },
              );
            },
            child: Text('Alert Dialog'),
          ),
        ],
      ),
    );
  }
}
