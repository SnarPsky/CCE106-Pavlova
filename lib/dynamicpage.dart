import 'package:flutter/material.dart';

class dynamicpage extends StatelessWidget {
  dynamicpage({super.key});

  String description =
      "Pavlova is a meringue-based dessert named after the Russian ballerina Anna Pavlova. Pavlova features a crisp crust and soft, light inside, topped with fruit and whipped cream.";

  var textstyle = TextStyle(fontWeight: FontWeight.bold, fontSize: 16);

  buildStar(int rating, int reviewCount) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (int i = 1; i <= rating; i++)
            const Icon(
              Icons.star,
              color: Colors.yellow,
              size: 24,
            ),
          for (int i = 1; i <= 5 - rating; i++)
            const Icon(
              Icons.star,
              color: Colors.black,
              size: 24,
            ),
          const SizedBox(
            width: 20,
          ),
          Text(
            "$reviewCount reviews",
            style: textstyle,
          ),
        ],
      );

  buildIconTab(iconval, title, time) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            iconval,
            color: Colors.green,
          ),
          SizedBox(
            height: 10,
          ),
          Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(
            height: 10,
          ),
          Text(
            time,
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      );

  buildColumn() => Column(
        children: [
          Image.asset(
            'pavlova.jpeg',
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Strawberry Pavlova',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Container(
            margin: EdgeInsets.all(15),
            child: Text(
              description,
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      );

  buildRowTab() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildIconTab(Icons.kitchen, 'PREP', '25 min'),
          SizedBox(width: 15),
          buildIconTab(Icons.timer, 'COOK', '1 hour'),
          SizedBox(width: 15),
          buildIconTab(Icons.kitchen, 'FEEDS', '4-6'),
          SizedBox(width: 15),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'NERA',
        ),
      ),
      body: Center(
          child: ListView(
        children: [
          buildColumn(),
          buildStar(5, 20),
          SizedBox(height: 20),
          buildRowTab(),
          SizedBox(
            height: 30,
          ),
        ],
      )),
    );
  }
}
