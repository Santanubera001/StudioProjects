import 'package:flutter/material.dart';
import 'Sign_Up.dart';
import 'login.dart';


void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login':(context)=>login(),
        '/SingUp':(context)=>MySignUp()
    },
  )
  );
}

// class MyApp extends StatefulWidget {
//   const MyApp(MaterialApp materialApp, {super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Boilerplate',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         textTheme: TextTheme(
//             headlineSmall: TextStyle(fontWeight:FontWeight.bold,fontSize:30 ),
//             headlineLarge: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,fontStyle: FontStyle.italic)
//         )
//       ),
//       home: ,
//     );
//   }


// class HomePage extends StatefulWidget {
//   const HomePage({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Center(child: Text("Home Page",))),
//       // body:
//         // Padding(
//         //   padding: const EdgeInsets.all(8.0),
//         //   child: SingleChildScrollView(
//         //     child: Column(
//         //       children: [
//         //         SingleChildScrollView(
//         //           scrollDirection: Axis.horizontal,
//         //           child: Padding(
//         //             padding: const EdgeInsets.all(20),
//         //             child: Row(
//         //               children: [
//         //                 Container(
//         //                   margin: EdgeInsets.only(right: 20),
//         //                        width: 200,
//         //                         height: 200,
//         //                     child: Center(child: Image.asset('assets/image/ʀᴀɴᴀ ʀᴀᴊʏᴀ.jpeg'))
//         //                 ),
//         //                 Container(
//         //                   margin: EdgeInsets.only(right: 20),
//         //                     width: 200,
//         //                     height: 200,
//         //                     child: Center(child: Image.asset('assets/image/67a4ffca-4a7b-46b0-8238-c6be8fcbf7bb.jpeg'))
//         //                 ),
//         //                 Container(
//         //                   margin: EdgeInsets.only(right: 20),
//         //                     width: 200,
//         //                     height: 200,
//         //                     child: Center(child: Image.asset('assets/image/download.jpeg'))
//         //                 ),
//         //                 Container(
//         //                   margin: EdgeInsets.only(right: 20),
//         //                     width: 200,
//         //                     height: 200,
//         //                     child: Center(child: Image.asset('assets/image/download (1).jpeg'))
//         //                 ),
//         //                 Container(
//         //                   margin: EdgeInsets.only(right: 20),
//         //                     width: 200,
//         //                     height: 200,
//         //                     child: Center(child: Image.asset('assets/image/download (2).jpeg'))
//         //                 ),
//         //               ],
//         //             ),
//         //           ),
//         //         ),
//         //         Container(
//         //           margin: EdgeInsets.only(bottom: 20),
//         //             height: 200,
//         //             child: Center(child: Image.asset('assets/image/17a9f3df-4563-4f69-bdf8-994370a7b404.jpeg'))
//         //         ),
//         //         Container(
//         //           margin: EdgeInsets.only(bottom: 20),
//         //             height: 200,
//         //             child: Center(child: Image.asset('assets/image/1d86395d-12cf-4b17-a0e9-99a44131b994.jpeg'))
//         //         ),
//         //         Container(
//         //           margin: EdgeInsets.only(bottom: 20),
//         //             height: 200,
//         //             child: Center(child: Image.asset('assets/image/moon.jpeg'))
//         //         ),
//         //         Container(
//         //           margin: EdgeInsets.only(bottom: 20),
//         //             height: 200,
//         //             child: Center(child: Image.asset('assets/image/download (2).jpeg'))
//         //         ),
//         //         Container(
//         //           margin: EdgeInsets.only(bottom: 20),
//         //             height: 200,
//         //             child: Center(child: Image.asset('assets/image/download (2).jpeg'))
//         //         ),
//         //         Container(
//         //           margin: EdgeInsets.only(bottom: 20),
//         //             height: 200,
//         //             child: Center(child: Image.asset('assets/image/download (2).jpeg'))
//         //         ),
//         //         Container(
//         //           margin: EdgeInsets.only(bottom: 20),
//         //             height: 200,
//         //             child: Center(child: Image.asset('assets/image/download (2).jpeg'))
//         //         ),
//         //         Container(
//         //           margin: EdgeInsets.only(bottom: 20),
//         //             height: 200,
//         //             child: Center(child: Image.asset('assets/image/download (2).jpeg'))
//         //         ),
//         //         Container(
//         //           margin: EdgeInsets.only(bottom: 20),
//         //             height: 200,
//         //             child: Center(child: Image.asset('assets/image/download (2).jpeg'))
//         //         ),
//         //
//         //       ],
//         //     ),
//         //   ),
//         // )
//
//
//
//
//
//       // Center(
//       //   child :InkWell(
//       //     onTap: () {
//       //       print("object");
//       //     },
//       //     onDoubleTap: ()
//       //     {
//       //       print("Me");
//       //     },
//       //   child: Container(
//       //         width: 200,
//       //          height: 200,
//       //     color: Colors.black,
//       //     child:Center(child: InkWell(
//       //       onTap: ()
//       //         {
//       //           print("I am Here");
//       //         },
//       //         child: Text("Click Me",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700,color: Colors.white),))) ,
//       //   ),
//       // ),
//       // )
//
//
//
//
//         // Container(
//         //   width: 300,
//         //   height: 400,
//         //   child: Column(
//         //          mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         //          crossAxisAlignment: CrossAxisAlignment.end,
//         //     children: [
//         //       Text("1"),
//         //       Text("1"),
//         //       Text("1"),
//         //       Text("1"),
//         //       Text("1"),
//         //       ElevatedButton(onPressed:(){
//         //         print("Me !");
//         //       }, child: Text('Click Me ')),
//         //
//         //     ],
//         //   ),
//         // )
//
//
//
//       // Center(
//       //   child: Container(
//       //      width: 100,
//       //       height: 100,
//       //       child: Center(child: Image.asset('assets/image/logo.png'))),
//       // ),
//     );
//   }
// }


