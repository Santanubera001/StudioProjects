import 'package:flutter/material.dart';
class expanded extends StatefulWidget {
  const expanded({super.key});

  @override
  State<expanded> createState() => _expandedState();
}

class _expandedState extends State<expanded> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("MyApp"),
      centerTitle: true,),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 3,
            child: Container(
              height: 100,
              color: Colors.deepOrangeAccent,
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              height: 100,
              color: Colors.blue,
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              height: 100,
              color: Colors.green,
            ),
          ),
          Expanded(
            flex: 6,
            child: Container(
              height: 100,
              color: Colors.yellow,
            ),
          )
        ],
      ),
    );
  }
}






