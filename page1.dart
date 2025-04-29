import 'package:flutter/material.dart'; // 오타 수정
import 'package:carousel_slider/carousel_slider.dart';

import 'main.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 20),
      child: ListView(
        children: <Widget>[
          _buildTop(),
          SizedBox(height: 20),
          _buildMiddle(),
          _buildBottom(),
        ],
      ),
    );
  }

  Widget _buildTaxiMenu(String title, {bool invisible = false}) {
    return InkWell(
      onTap: () {
        print(title);
      },
      child: Opacity(
        opacity: invisible == true ? 0.0 : 1.0,
        child: Column(
          children: [Icon(Icons.local_taxi, size: 40), Text(title)],
        ),
      ),
    );
  }

  Widget _buildTop() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildTaxiMenu('택시1', invisible: false),
            _buildTaxiMenu('택시2'),
            _buildTaxiMenu('택시3'),
            _buildTaxiMenu('택시4'),
          ],
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildTaxiMenu('택시5'),
            _buildTaxiMenu('택시6'),
            _buildTaxiMenu('택시7'),
            _buildTaxiMenu('택시8', invisible: true),
          ],
        ),
      ],
    );
  }

  Widget _buildMiddle() {
    return CarouselSlider(
      items: dummyItems.map((url) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(color: Colors.amber),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(url, fit: BoxFit.cover),
              ),
            );
          },
        );
      }).toList(), // `dummyItems.map` 결과를 List로 변환
      options: CarouselOptions(
        height: 150,
        autoPlay: true,
      ),
    );
  }

  Widget _buildBottom() {
    final items = List.generate(10, (i){
      return ListTile(
        leading: Icon(Icons.notifications_none),
        title: Text('$i: [이벤트] 이것은 공지사항입니다'),
      );
    });

    return ListView(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: items,
    );
  }
}
