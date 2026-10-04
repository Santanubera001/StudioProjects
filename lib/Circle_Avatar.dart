import 'package:flutter/material.dart';

class Avatar extends StatefulWidget {
  const Avatar({super.key});

  @override
  State<Avatar> createState() => _AvatarState();
}

class _AvatarState extends State<Avatar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Title"),
          backgroundColor:Colors.blue),
      body:
      Center(
        child: Container(
          width: 100,
          height: 100,
          child: CircleAvatar(
            backgroundImage: AssetImage("assets/image/ʀᴀɴᴀ ʀᴀᴊʏᴀ.jpeg"),
            backgroundColor: Colors.transparent,
          ),
        ),
      ),
    );
  }
}
