import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TestDropdownbutton extends StatefulWidget {
  const TestDropdownbutton({super.key});

  @override
  State<TestDropdownbutton> createState() => _DropDownButtonState();
}

class _DropDownButtonState extends State<TestDropdownbutton> {
  final _valueList = ['첫 번째', '두 번째', '세 번째'];
  String? _selectedValue = '첫 번째';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('DropDownButton 테스트'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton(
              value: _selectedValue,
              items:
                  _valueList.map((value) {
                    return DropdownMenuItem(value: value, child: Text(value));
                  }).toList(),
              onChanged: (value) {
                setState(() {
                  _selectedValue = value;
                });
              },
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
