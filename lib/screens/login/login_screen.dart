import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: width,
            height: height*0.27,
            decoration: const BoxDecoration(
              color: Colors.amberAccent,
            ),
          ),


          Container(
            width: width,
            margin: const EdgeInsets.only(left: 20,right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                const Text(
                  'Hello',
                  style: TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  Text(
                  'Sign-in to your account',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey[500],
                  ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                
              ],
            ),  
          ),
          Container(
            width: width,
            margin: const EdgeInsets.only(left: 20,right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                TextField(
                  decoration: InputDecoration(
                    label: Text('Email'),
                    prefixIcon: Icon(Icons.mail_outlined),
                    prefixIconColor: Color(0xff652351),

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),

                    //!! define a color schema,colors are only to show where they can be changed

                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      borderSide: BorderSide(
                        color: Color(0xff652351),
                        )
                      ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      borderSide: BorderSide(
                        color: Color(0xff652351),
                          )
                        ),
                    ),  
                ),
              ],)
          ),
        ],
      )
    );
  }
}