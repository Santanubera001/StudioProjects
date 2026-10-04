import 'package:flutter/material.dart';

class MyAppContainer extends StatelessWidget {
  const MyAppContainer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: const Text("MYAPP"))),
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.blueAccent,
              child:Center(
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                     color: Colors.red,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(50),bottomRight: Radius.circular(50)),
                    border: Border.all(
                      width: 5,
                      color: Colors.black,
                      style: BorderStyle.solid,
                    ),
                   boxShadow: [
                     BoxShadow(
                       blurRadius: 20,
                       spreadRadius: 10,
                       color: Colors.yellow
                     )
                   ],

                  ),
                ),
              ),
        ),
      ),
    );
  }
}