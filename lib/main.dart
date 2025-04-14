import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
         Container(
           color: Colors.white,
           width: 900,
           height: 400,
           child: Row(
             children: [
               Container(
                 color: Colors.red,
                 width: 450,
                 height: 400,
               ),
               Container(
                 color: Colors.white,
                 width: 450,
                 height: 400,
                 child: Column(
                   children: [
                     Container(
                       color: Colors.pink[100],
                       width: 450,
                       height: 200,
                     ),
                     Container(
                       color: Colors.white,
                       width: 450,
                       height: 200,
                       child: Row(
                         children: [
                           Container(
                             color: Colors.white,
                             width: 225,
                             height: 200,
                           ),
                           Container(
                             color: Colors.orange,
                             width: 225,
                             height: 200,
                           ),
                         ],
                       ),
                     ),
                   ],
                 ),
               ),
             ]
           ),
          ),
          Container(
            color: Colors.yellow,
            width: 900,
            height: 400,
          ),
        ],
      ),
    );
  }
}
