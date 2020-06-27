import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hellofood/food_info.dart';

class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(250, 250, 250, 1),
        elevation: 4,
        title: Text(
          "What would you like to eat?",
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          Icon(
            Icons.notifications_none,
            size: 25,
            color: Colors.black,
          ),
          SizedBox(
            width: 10,
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(80.0),
          child: Padding(
            padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
            child: Container(
              height: 60.0,
              alignment: Alignment.center,
              child: TextField(
                decoration: InputDecoration(
                    hintText: "What would you like to buy?",
                    prefixIcon: Icon(
                      Icons.search,
                      size: 25,
                      color: Colors.black,
                    ),
                    suffixIcon: Icon(
                      Icons.sort,
                      size: 25,
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    )),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 90,
              padding: EdgeInsets.symmetric(horizontal: 10),
              width: double.infinity,
              color: Color.fromRGBO(249, 233, 234, 1),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                   itemcontainer("burger",FontAwesomeIcons.hamburger),
                     SizedBox(width: 20,),
                     itemcontainer("Ice Cream",FontAwesomeIcons.iceCream),
                    SizedBox(width: 20,),
                    itemcontainer("Cake",FontAwesomeIcons.birthdayCake),
                    SizedBox(width: 20,),
                    itemcontainer("Pizza",FontAwesomeIcons.pizzaSlice),
                    SizedBox(width: 20,),
                    itemcontainer("burger",FontAwesomeIcons.hamburger),
                    SizedBox(width: 20,),
                    itemcontainer("Ice Cream",FontAwesomeIcons.iceCream),
                    SizedBox(width: 20,),
                    itemcontainer("Cake",FontAwesomeIcons.birthdayCake),
                    SizedBox(width: 20,),
                    itemcontainer("Pizza",FontAwesomeIcons.pizzaSlice),
                    SizedBox(width: 20,),
                    itemcontainer("burger",FontAwesomeIcons.hamburger),
                    SizedBox(width: 20,),
                    itemcontainer("Ice Cream",FontAwesomeIcons.iceCream),
                    SizedBox(width: 20,),
                    itemcontainer("Cake",FontAwesomeIcons.birthdayCake),
                    SizedBox(width: 20,),
                    itemcontainer("Pizza",FontAwesomeIcons.pizzaSlice),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Popular Foods",style: TextStyle(fontSize: 22,color: Colors.black),),
                  Text("See all",style: TextStyle(fontSize: 16,color: Colors.blue),),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                 foodcard(),
                    SizedBox(width: 10,),
                    foodcard(),
                    SizedBox(width: 10,),
                    foodcard(),
                    SizedBox(width: 10,),
                    foodcard(),
                ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              child: Text("Best Foods",style: TextStyle(fontSize: 22,color: Colors.black),),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                 height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage("assets/dish.jpg"),
                    fit: BoxFit.cover
                  )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                height: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage("assets/dish.jpg"),
                        fit: BoxFit.cover
                    )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                height: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage("assets/dish.jpg"),
                        fit: BoxFit.cover
                    )
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Color.fromRGBO(255, 41, 46, 1),
              size: 25,
            ),
            title: Text('Home',style: TextStyle(color: Colors.black,fontSize: 16),),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.near_me,
              color: Colors.black,
              size: 25,
            ),
            title: Text('Near By',style: TextStyle(color: Colors.black,fontSize: 16)),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.black,
              size: 25,
            ),
            title: Text(
              'Cart',style: TextStyle(color: Colors.black,fontSize: 16)
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_box,
              color: Colors.black,
              size: 25,
            ),
            title: Text('Account',style: TextStyle(color: Colors.black,fontSize: 16)),
          ),
        ],
        elevation: 7.0,
        backgroundColor: Color.fromRGBO(250, 250, 250, 1),
      ),
    );
  }
  Widget foodcard(){
    return  GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (BuildContext)=>Food_Info()));
      },
      child: Container(
        width: 165,
        height: 230,
        color: Colors.white,
        child: Column(children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 5,right: 5),
            alignment: Alignment.centerRight,
            child: Icon(FontAwesomeIcons.solidHeart,size: 25,color: Color.fromRGBO(255, 41, 46, 1),),
          ),
          Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(150),
                image: DecorationImage(
                    image: AssetImage("assets/dish.jpg"),
                    fit: BoxFit.cover
                )
            ),
          ),
          SizedBox(height: 10,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Grilled Salmons",style: TextStyle(fontSize: 16,),),
                    SizedBox(height: 10,),
                    Row(
                      children: <Widget>[
                        Text("4.9",style: TextStyle(fontSize: 12),),
                        SizedBox(width: 2,),
                        Row(
                          children: <Widget>[
                            Icon(Icons.star,size: 10,color: Color.fromRGBO(255, 41, 46, 1),),
                            Icon(Icons.star,size: 10,color: Color.fromRGBO(255, 41, 46, 1),),
                            Icon(Icons.star,size: 10,color: Color.fromRGBO(255, 41, 46, 1),),
                            Icon(Icons.star,size: 10,color: Color.fromRGBO(255, 41, 46, 1),),
                            Icon(Icons.star_border,size: 10,color: Color.fromRGBO(255, 41, 46, 1),),
                          ],
                        ),
                        SizedBox(width: 2,),
                        Text("(200)",style: TextStyle(fontSize: 12),),
                      ],
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Icon(Icons.near_me,size: 25,color: Color.fromRGBO(255, 41, 46, 1),),
                    SizedBox(height: 10,),
                    Text("\$17.03",style: TextStyle(fontSize: 12),),
                  ],
                )

              ],
            ),
          ),
        ],),
      ),
    );
  }
  Widget itemcontainer(var name,var icon){
    return  Container(
      width: 70,
      decoration: BoxDecoration(
          color: Colors.white,
        borderRadius: BorderRadius.circular(5)
      ),
      height: 70,
      child: Column(children: <Widget>[
        SizedBox(height: 10,),
        Icon(icon,color: Color.fromRGBO(255, 41, 46, 1),),
        SizedBox(height: 5,),
        Text(name)
      ],),
    );
  }
}
