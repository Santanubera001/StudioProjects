import 'package:flutter/material.dart';
import 'package:my_page/login.dart';

class MySignUp extends StatefulWidget {
  const MySignUp({super.key});

  @override
  State<MySignUp> createState() => _MySignUpState();
}

class _MySignUpState extends State<MySignUp> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailsingConttroler = TextEditingController();
  final TextEditingController passwordConttroler = TextEditingController();
  final TextEditingController nameMyController = TextEditingController();

  void _singUp() {
    String name = nameMyController.text.trim();
    String pass = passwordConttroler.text.trim();
    String email = emailsingConttroler.text.trim();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Account created for $name")),
    );
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => login()));
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/image/register.png"),
                fit: BoxFit.cover)),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              Container(
                padding: EdgeInsets.only(left: 35, top: 130),
                child: Text(
                  "Create\nAccount",
                  style: TextStyle(color: Colors.white, fontSize: 33),
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.28,
                      right: 35,
                      left: 35),
                  child: Column(
                    children: [
                      TextFormField(
                        controller: nameMyController,
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.black)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.black)),
                            hintText: 'Name',
                            // hintStyle: TextStyle(color: Colors.white),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            suffixIcon:
                                Icon(Icons.person, color: Colors.black54)),
                        validator: (value){
                          if(value==null||value.isEmpty)
                            {
                              return "Enter your Name";
                            }
                              return null;
                        },
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      TextFormField(
                        controller: emailsingConttroler,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.black)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.black)),
                          hintText: 'Email',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          suffixIcon: IconButton(
                            icon: Icon(Icons.email, color: Colors.black54),
                            onPressed: () {},
                          ),
                        ),
                        validator: (value)
                        {
                          if(value==null || value.isEmpty)
                            {
                              return "Enter a Email";
                            }
                        else  if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                            return "Enter a valid email";
                          }
                            return null;

                        },
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      TextFormField(
                        controller: passwordConttroler,
                        obscureText: true,
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.black)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.black)),
                            hintText: 'Password',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            suffixIcon: Icon(Icons.remove_red_eye,
                                color: Colors.black54)),
                        validator: (value)
                        {
                          if(value==null || value.isEmpty)
                            {
                              return "Enter your Password";
                            }
                          else if(value.length < 6) {
                            return "Password must be at least 6 characters";
                          }
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
                            onPressed: () {
                              Navigator.pushNamed(context, 'login');
                            },
                              child: Center(
                                child: Text(
                                  'Sign In',
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
                                onPressed:() {
                                  if (_formKey.currentState!.validate()) {
                                    _singUp();
                                  }
                                },
                                icon: Icon(Icons.arrow_forward)),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.center,
                      //   children: [
                      //     Center(
                      //       child: Container(
                      //         height: 70,
                      //         width: 100,
                      //         decoration: BoxDecoration(
                      //             color: Colors.blueGrey.shade400,
                      //             borderRadius: BorderRadius.circular(20)),
                      //         child: TextButton(
                      //             onPressed: () {
                      //               Navigator.pushNamed(context, 'login');
                      //             },
                      //             child: Text(
                      //               'login',
                      //               style: TextStyle(
                      //                 color: Colors.white,
                      //                 fontWeight: FontWeight.bold,
                      //                 fontSize: 30,
                      //               ),
                      //             )),
                      //       ),
                      //     ),
                      //   ],
                      // )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
