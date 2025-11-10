import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ImageMatches(),
    );
  }
}
class ImageMatches extends StatefulWidget {
  const ImageMatches({super.key});

  @override
  State<ImageMatches> createState() => _ImageMatchesState();
}

class _ImageMatchesState extends State<ImageMatches> {
  int count1 = 5;
  int count2 = 5;
  @override
  Widget build(BuildContext context) {
    Text checkMatch() {
    if (count1 == count2) {
      return Text('You have a match!',style: TextStyle(color: Colors.white,fontSize: 30),);
    }else{
      return Text('Try again!',style: TextStyle(color: Colors.white,fontSize: 30),);
    }}
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        title: Center(child: Text('Image Matches',style: TextStyle(color: Colors.white),)),
        backgroundColor: Colors.blue[700],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          checkMatch(),
          Padding(
            padding: const EdgeInsets.only(left: 10.0,right: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                
                Expanded(child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: GestureDetector(onTap: () {
                    setState(() {
                      count1 = Random().nextInt(5) + 1;
                      count2 = Random().nextInt(5) + 1;
                    });
                  },
                    child: Image.asset('images/image-$count1.png')),
                )),
                Expanded(child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: GestureDetector(
                    child: Image.asset('images/image-$count2.png')),
                )),
              ],
            ),
          ),
        ],
      )
    );
  }
}