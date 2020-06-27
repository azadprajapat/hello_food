import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hellofood/carts.dart';

class Food_Info extends StatefulWidget {
  @override
  _Food_InfoState createState() => _Food_InfoState();
}

class _Food_InfoState extends State<Food_Info>
    with SingleTickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    _controller = new TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(250, 250, 250, 1),
        leading: GestureDetector(
          onTap: (){
            Navigator.of(context).pop();
          },
          child: Icon(Icons.arrow_back_ios, color: Colors.black, size: 25,),
        ),
        actions: <Widget>[
          GestureDetector(
            child: Icon(
              Icons.account_balance_wallet, color: Colors.black, size: 25,),
          ),
          SizedBox(width: 10,)
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    height: 300,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage("assets/dish.jpg"),
                            fit: BoxFit.cover
                        )
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[

                            Text("Grilled Salmons", style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),),
                            SizedBox(height: 5,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Text("by", style: TextStyle(fontSize: 16,
                                    color: Color.fromRGBO(224, 224, 224, 1)),),
                                SizedBox(width: 10,),
                                Text("pizza hut", style: TextStyle(
                                    color: Colors.black, fontSize: 16),),
                              ],
                            )
                          ],
                        ),
                        Text("\$96.00", style: TextStyle(color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    width: 250,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("-", style: TextStyle(color: Colors.black,
                            fontSize: 30),),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Carts()));
                          },
                          child: Container(
                              height: 50,
                              width: 200,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(255, 41, 46, 1),
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Center(
                                child: Text("Add To Bag", style: TextStyle(
                                    color: Colors.white, fontSize: 20),),
                              )
                          ),
                        ),
                        Text("+", style: TextStyle(color: Colors.black,
                            fontSize: 30),),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    width: double.infinity,
                    height: 30,
                    child: TabBar(
                      indicatorColor: Color.fromRGBO(255, 41, 46, 1),
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicatorPadding: EdgeInsets.symmetric(horizontal: 30),
                      controller: _controller,
                      unselectedLabelStyle: TextStyle(
                          color: Colors.black
                      ),
                      tabs: <Widget>[
                        Text("Food Details",
                          style: TextStyle(fontSize: 16, color: Color.fromRGBO(
                              255, 41, 46, 1)),),
                        Text("Food Reviews",
                          style: TextStyle(fontSize: 16, color: Color.fromRGBO(
                              224, 41, 46, 1)),),
                      ],
                    ),
                  ),
                  Container(
                    height: 200,
                    width: double.infinity,
                    child: TabBarView(
                        controller: _controller,
                        children: [
                          Tab(
                            child: Container(
                              alignment: Alignment(0, -1),
                              child: Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                              ),

                            ),
                          ),
                          Tab(
                            child: Container(
                              alignment: Alignment(0, -1),
                              child: Text(
                                "Amet nisl purus in mollis nunc. Semper feugiat nibh sed pulvinar proin gravida hendrerit lectus. Risus in hendrerit gravida rutrum quisque non tellus. Ullamcorper eget nulla facilisi etiam dignissim diam quis. Sed risus ultricies tristique nulla aliquet. Molestie ac feugiat sed lectus vestibulum mattis ullamcorper velit. Leo integer malesuada nunc vel risus commodo viverra maecenas. Praesent semper feugiat nibh sed pulvinar proin gravida hendrerit lectus. In dictum non consectetur a erat nam at. Sed cras ornare arcu dui vivamus arcu. Cursus mattis molestie a iaculis at erat.",

                              ),
                            ),
                          ),
                        ]),
                  )
                ],
              ),
              Align(
                alignment: Alignment(0,1),
                child: Container(
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                        Icon(
                          Icons.timelapse,
                          color: Colors.blue,
                          size: 25,
                        ),
                        SizedBox(height: 5,),
                        Text('12pm - 3pm', style: TextStyle(color: Colors.black,
                            fontSize: 16),)
                      ],),
                      Column(children: <Widget>[
                        Icon(
                          Icons.directions,
                          color: Colors.green,
                          size: 25,
                        ),
                        SizedBox(height: 5,),
                        Text(
                            '3.5 Km', style: TextStyle(color: Colors.black, fontSize: 16)),

                      ],),
                      Column(children: <Widget>[
                        Icon(
                          Icons.map,
                          color: Colors.black,
                          size: 25,
                        ),
                        SizedBox(height: 5,),
                        Text(
                            'Map View', style: TextStyle(color: Colors.black, fontSize: 16)
                        ),
                      ],)
                      , Column(children: <Widget>[
                        Icon(
                          Icons.directions_bike,
                          color: Color.fromRGBO(220, 93, 81, 1),
                          size: 25,
                        ),
                        SizedBox(height: 5,),
                        Text('Delivery',
                            style: TextStyle(color: Colors.black, fontSize: 16)),
                      ],)

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
