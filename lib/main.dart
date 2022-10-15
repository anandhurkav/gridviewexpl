import 'package:flutter/material.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomescreen(),
    );
  }
}

class MyHomescreen extends StatelessWidget {
  const MyHomescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GRID VIEW'),
      ),
      body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemCount: 10, itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: (){

          },
          child: Card(
            child: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(image: NetworkImage('https://d1yjjnpx0p53s8.cloudfront.net/styles/logo-thumbnail/s3/112011/liverpool_football_club.png?itok=pqKzEBmz'))
                  ),
                ),
                Container(
                  height: 40,
                  color: Colors.white,
                  child: Text('Liverpool FC'),
                )
              ],
            ),
          ),
        );
      },),
    );
  }
}