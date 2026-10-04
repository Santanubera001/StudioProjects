
import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final _formKey=GlobalKey<FormState>();
  final TextEditingController emailConttroler=TextEditingController();
  final TextEditingController passConttroler=TextEditingController();
  void _login(){
    if(_formKey.currentState!.validate())
      {
       String email= emailConttroler.text.trim();
       String pass=passConttroler.text.trim();
       ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Login In As $email"))
       );

      }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image:
          AssetImage("assets/image/login.png"),fit:BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _formKey,
            child: Stack(
               children: [
                   Container(
                     padding: EdgeInsets.only(left: 35,top:130),
                     child: Text("Welcome\nBack",style: TextStyle(color: Colors.white,fontSize: 33),),
                   ),
                 SingleChildScrollView(
                   child: Container(
                     padding: EdgeInsets.only(
                         top: MediaQuery.of(context).size.height*0.5,right:35,left: 35),
                     child: Column(
                       children: [
                         TextFormField(
                           controller: emailConttroler,
                           decoration: InputDecoration(
                             fillColor: Colors.grey.shade100,
                             filled: true,
                             hintText: 'Email',
                             border: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(10)),
                             suffixIcon: IconButton(
                               icon: Icon(Icons.email,color: Colors.blueGrey),
                               onPressed: (){
                               },
                             ),
                           ),
                           validator: (value){
                             if(value==null|| value.isEmpty)
                               {
                                 return "Enter the Email";
                               }
                            else if(!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value))
                               {
                                 return "Enter a Vaild Email";
                               }
                           },
                         ),
                         SizedBox(
                           height: 35,
                         ),
                         TextFormField(
                           controller: passConttroler,
                           obscureText: true,
                           decoration: InputDecoration(
                               fillColor: Colors.grey.shade100,
                               filled: true,
                               hintText: 'Password',
                               border: OutlineInputBorder(
                                   borderRadius: BorderRadius.circular(10)),
                               suffixIcon:Icon(Icons.lock,color: Colors.black54)
                           ),
                             validator: (value) {
                               if (value == null || value.isEmpty) return "Enter your password";
                               if (value.length < 6) return "Password must be at least 6 characters";
                               return null;
                             },
                         ),
                         SizedBox(height: 30),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             ElevatedButton(
                               style: ElevatedButton.styleFrom(
                                 backgroundColor: Colors.blueGrey.shade300,
                               ),
                               onPressed: _login,
                               child: Center(
                                 child: Text(
                                   'Login',
                                   style: TextStyle(
                                       fontSize: 27,
                                       fontWeight: FontWeight.w700,
                                       color: Colors.black54),
                                 ),
                               ),
                             ),
                             CircleAvatar(
                               radius: 30,
                               backgroundColor: Colors.blueGrey,
                               child: IconButton(
                                 color: Colors.black,
                                   onPressed: (){},
                                 icon: Icon(Icons.arrow_forward)
                               ),
                             )
                           ],
                         ),
                         SizedBox(
                           height:30,
                         ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             TextButton(onPressed: (){
                               Navigator.pushNamed(context, '/SingUp');
                             },
                                 child: Text('Sign Up',
                               style: TextStyle(
                                   color: Color(0xff4c505b),
                                   decoration: TextDecoration.underline,
                                 fontSize: 18
                               ),)),
                             TextButton(onPressed: (){}, child: Text('Forgot Password',
                               style: TextStyle(
                                   color: Color(0xff4c505b),
                                   decoration: TextDecoration.underline,
                                   fontSize: 18
                               ),))

                           ],
                         )
                       ],
                     ),
                   ),
                 )
               ],
            ),
          ),
        ),
      ),
    );
  }
}
