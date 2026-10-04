import 'package:flutter/material.dart';
import 'package:my_page/util/theme_Manage.dart';

class theme extends StatefulWidget {
  const theme({super.key});

  @override
  State<theme> createState() => _themeState();
}


class _themeState extends State<theme> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Theme"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text("Santanu",style: TextStyle11(),)
        ],
      )
      ,
    );
  }
}
