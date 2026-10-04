import 'package:flutter/material.dart';

class Pratices extends StatefulWidget {
  const Pratices({super.key});

  @override
  State<Pratices> createState() => _PraticesState();
}

class _PraticesState extends State<Pratices> {
  @override
  Widget build(BuildContext context) {
    var arrName=["Santanu","Avijit","Sayan","Ayan","Putol"];
    return
      Container(
        decoration: BoxDecoration(
            image: DecorationImage(image:
            AssetImage('assets/image/login.png'),fit:BoxFit.cover )
        ),
        child: Scaffold(
          appBar: AppBar(
              title: Center(
                  child: const Text("Home Page",)
              ),
            backgroundColor: Colors.blue,
          ),
        body:
             ListView.separated(itemBuilder:(context, index) {
              return ListTile(
                leading: Container(
                  width: 100,
                  height: 100,
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/image/download (3).jpeg"),
                    backgroundColor: Colors.transparent,
                  ),
                ),
                title:Text(arrName[index]) ,
                subtitle: Text('Number'),
                trailing:Icon(Icons.add),
              );
            },
              itemCount: arrName.length,
              // itemExtent: 100,
              scrollDirection: Axis.vertical,
              separatorBuilder: (context,index)
              {
                return Divider(height: 20,thickness: 4,);
            },
            ),
          ),
      );
        
        
        
        
        
        
      // ListView(
      //   scrollDirection: Axis.vertical,
      //      reverse: true,
      //      children: [
      //        Center(child: Padding(
      //          padding: const EdgeInsets.all(8.0),
      //          child: Text("MEEEEE",style: TextStyle(fontSize: 30,color:Colors.blue)),
      //        )),
      //        Center(child: Padding(
      //          padding: const EdgeInsets.all(8.0),
      //          child: Text("YOUU",style: TextStyle(fontSize: 30,color:Colors.green)),
      //        )),
      //        Center(child: Padding(
      //          padding: const EdgeInsets.all(8.0),
      //          child: Text("HEEE",style: TextStyle(fontSize: 30,color:Colors.red)),
      //        )),
      //        Center(child: Padding(
      //          padding: const EdgeInsets.all(8.0),
      //          child: Text("SHEEE",style: TextStyle(fontSize: 30,color:Colors.orange)),
      //        ))
      //      ],
      // ),
  }
}
