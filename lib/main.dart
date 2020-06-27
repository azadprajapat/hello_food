import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hellofood/carts.dart';
import 'package:hellofood/category.dart';
import 'package:hellofood/food_info.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: false,
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 130),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      child: Icon(
                        Icons.fastfood,
                        size: 40,
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left:45),
                      child: Text(
                        "hello",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 130),
                      child: Text(
                        "food",
                        style: TextStyle(
                          color: Color.fromRGBO(247, 101, 52, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 40,),
          Container(
            height: 60,
            width: 300,
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromRGBO(242, 243, 245, 1),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(width: 0,style: BorderStyle.none)
                ),

                prefixIcon: Icon(Icons.call,),
                hintText: "Phone Number"
              ),
            ),
          ),
          SizedBox(height: 10,),
          Container(
            height: 60,
            width: 300,
            child: TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromRGBO(242, 243, 245, 1),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(width: 0,style: BorderStyle.none)
                  ),

                  prefixIcon: Icon(Icons.lock_outline,),
                  suffixIcon: Icon(Icons.remove_red_eye),
                  hintText: "Password"
              ),
            ),
          ),
          SizedBox(height: 20,),
          Container(
            width: 300,
            alignment: Alignment(1.0,0.0),
            child: Text("Forgot your password ?",style: TextStyle(color: Color.fromRGBO(100, 100, 102, 1)),),
          ),
          SizedBox(height: 20,),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Category()));
            },
            child: Container(
              width: 300,
              padding: EdgeInsets.symmetric(vertical: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              boxShadow: [BoxShadow(color: Colors.black,blurRadius: 7)],
              gradient: LinearGradient(colors: [Color.fromRGBO(247, 65, 142, 1),Color.fromRGBO(250, 158, 107, 1)])
              ),
              child: Text("SIGN IN",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(height: 20,),
          Container(
            width: 250,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 1,
                  width: 110,
                  color: Color.fromRGBO(247, 65, 142, 1),
                ),
                Text("Or"),
                Container(
                  height: 1,
                  width: 110,
                  color: Color.fromRGBO(247, 65, 142, 1),
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),
          Container(
            width: 200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color.fromRGBO(247, 65, 142, 1),
                  ),
                  child: Center(
                    child: Icon(FontAwesomeIcons.facebookF,color: Colors.white,size: 30,),
                  ),
                  height: 60,
                  width: 60,

                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color.fromRGBO(247, 65, 142, 1),
                  ),
                  child: Center(
                    child: Icon(FontAwesomeIcons.google,color: Colors.white,size: 30,),
                  ),

                ),
              ],
            ),
          ),
          SizedBox(height: 90,),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Don't have an account?",style: TextStyle(color:Color.fromRGBO(100, 100, 102, 1) ),),
                Text("Sign Up",style: TextStyle(color: Colors.blue),),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
