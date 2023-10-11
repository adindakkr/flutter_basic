import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    Widget choice = Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(top: 12),
      height: 40,
      child: GridView.count(
        shrinkWrap: true,
        crossAxisCount: 2,
        children: <Widget>[
          Container(
            alignment: Alignment.topCenter,
            child: const Text("BERITA TERBARU",
                style: TextStyle(
                    fontSize: 12, color: Color.fromARGB(255, 133, 128, 128))),
          ),
          Container(
            alignment: Alignment.topCenter,
            child: const Text("PERTANDINGAN HARI INI",
                style: TextStyle(
                    fontSize: 12, color: Color.fromARGB(255, 133, 128, 128))),
          ),
        ],
      ),
    );

    Widget picture = Container(
        height: 200,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            subPicture(
                'arhan.jpg', 2, (MediaQuery.of(context).size.width - 8) / 5),
            subPicture(
                'rafael.jpg', 2, (MediaQuery.of(context).size.width - 8) / 5),
            subPicture(
                'asnawi.jpg', 2, (MediaQuery.of(context).size.width - 8) / 5),
            subPicture('marselino.jpg', 2,
                (MediaQuery.of(context).size.width - 8) / 5),
            subPicture(
                'egy.jpg', 0, (MediaQuery.of(context).size.width - 8) / 5),
          ],
        ));

    Widget title = Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.red, width: 7),
        ),
      ),
      height: 45,
      margin: EdgeInsets.only(bottom: 7),
      child: Text(
        'Lima Pemain Timnas Tampan dan Memikat Hati',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );

    Widget content = Column(
      children: [
        subContent('arhan.jpg', 'Pratama Arhan', 1),
        subContent('rafael.jpg', 'Rafael Struick', 2),
        subContent('asnawi.jpg', 'Asnawi Mangkualam', 3),
        subContent('marselino.jpg', 'Marselino Ferdinan', 4),
        subContent('egy.jpg', 'Egy Maulana Vikri', 5),
      ],
    );

    return MaterialApp(
      home: Scaffold(
          appBar:
              AppBar(backgroundColor: Colors.red, title: const Text("MyApp")),
          body: ListView(
            children: [
              choice,
              picture,
              title,
              content,
            ],
          )),
    );
  }

  Widget subContent(String picture_link, String name, int number) {
    return Container(
        color: Colors.red,
        alignment: Alignment.center,
        height: 202.5,
        margin: EdgeInsets.only(bottom: 10),
        child: GridView.count(
          physics: ScrollPhysics(),
          crossAxisCount: 2,
          children: [
            Center(
                child: Image.asset('assets/images/${picture_link}',
                    width: 100, fit: BoxFit.cover)),
            Center(
                child: Text("${number}. ${name}",
                    style: TextStyle(color: Colors.white))),
          ],
        ));
  }

  Widget subPicture(String link, double margin, double width) {
    return Container(
      margin: EdgeInsets.only(right: margin),
      child: Image.asset(
        'assets/images/${link}',
        width: width,
        fit: BoxFit.cover,
      ),
    );
  }
}
