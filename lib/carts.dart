import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Carts extends StatefulWidget {
  @override
  _CartsState createState() => _CartsState();
}

class _CartsState extends State<Carts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(250, 250, 250, 1),
        centerTitle: true,
        leading: GestureDetector(
          onTap: (){
            Navigator.of(context).pop();
          },
          child: Icon(
            Icons.arrow_back_ios,
            size: 25,
            color: Color.fromRGBO(76, 76, 76, 1),
          ),
        ),
        actions: <Widget>[
          Icon(
            Icons.account_balance_wallet,
            size: 25,
            color: Color.fromRGBO(76, 76, 76, 1),
          ),
          SizedBox(
            width: 10,
          )
        ],
        title: Text(
          "Item Carts",
          style: TextStyle(
              color: Color.fromRGBO(76, 76, 76, 1),
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 40),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 2),
                child: Text(
                  "Your Food Cart",
                  style: TextStyle(
                      color: Color.fromRGBO(76, 76, 76, 1),
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              _buildcard(),
              SizedBox(
                height: 10,
              ),
              _buildcard(),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 2),
                child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)),
                      hintText: "Add Your Promo Code",
                      suffixIcon: Icon(
                        FontAwesomeIcons.tag,
                        color: Color.fromRGBO(255, 41, 46, 1),
                        size: 25,
                      )),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                elevation: 4.0,
                color: Colors.white,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Grilled Salmons",
                              style: TextStyle(
                                  color: Color.fromRGBO(76, 76, 76, 1),
                                  fontSize: 18)),
                          Text("\$192.00",
                              style: TextStyle(
                                  color: Color.fromRGBO(76, 76, 76, 1),
                                  fontSize: 18)),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Meat Vegetable",
                              style: TextStyle(
                                  color: Color.fromRGBO(76, 76, 76, 1),
                                  fontSize: 18)),
                          Text("\$102.00",
                              style: TextStyle(
                                  color: Color.fromRGBO(76, 76, 76, 1),
                                  fontSize: 18)),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Total",
                              style: TextStyle(
                                  color: Color.fromRGBO(76, 76, 76, 1),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold)),
                          Text("\$294.00",
                              style: TextStyle(
                                  color: Color.fromRGBO(76, 76, 76, 1),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ],

                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 2),
                child: Text("Payment Method",
                    style: TextStyle(
                        color: Color.fromRGBO(76, 76, 76, 1),
                        fontWeight: FontWeight.bold,
                        fontSize: 20)),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                elevation: 4.0,
                color: Colors.white,
                child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.creditCard,
                          size: 25,
                          color: Color.fromRGBO(76, 76, 76, 1),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Credit/Debit Card",
                          style: TextStyle(
                              color: Color.fromRGBO(76, 76, 76, 1),
                              fontSize: 18),
                        )
                      ],
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                elevation: 4.0,
                color: Colors.white,
                child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.wallet,
                          size: 25,
                          color: Color.fromRGBO(76, 76, 76, 1),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Wallet",
                          style: TextStyle(
                              color: Color.fromRGBO(76, 76, 76, 1),
                              fontSize: 18),
                        )
                      ],
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                elevation: 4.0,
                color: Colors.white,
                child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.paypal,
                          size: 25,
                          color: Color.fromRGBO(76, 76, 76, 1),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Paypal",
                          style: TextStyle(
                              color: Color.fromRGBO(76, 76, 76, 1),
                              fontSize: 18),
                        )
                      ],
                    )),
              ),
              SizedBox(height: 10,),
              Card(
                elevation: 4.0,
                color: Colors.white,
                child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.amazonPay,
                          size: 25,
                          color: Color.fromRGBO(76, 76, 76, 1),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Amazon Pay",
                          style: TextStyle(
                              color: Color.fromRGBO(76, 76, 76, 1),
                              fontSize: 18),
                        )
                      ],
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildcard() {
    return Card(
      color: Colors.white,
      elevation: 4.0,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              width: 90,
              height: 90,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
                image: DecorationImage(
                    image: AssetImage("assets/dish.jpg"), fit: BoxFit.cover),
              ),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Grilled Salmons\n\$96.00 ",
                        style: TextStyle(
                            color: Color.fromRGBO(76, 76, 76, 1), fontSize: 18),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.delete_outline,
                        size: 30,
                        color: Color.fromRGBO(76, 76, 76, 1),
                      )
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "-",
                        style: TextStyle(
                            color: Color.fromRGBO(76, 76, 76, 1), fontSize: 40),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 41, 46, 1),
                            borderRadius: BorderRadius.circular(5)),
                        width: 100,
                        height: 40,
                        child: Center(
                          child: Text(
                            "Add To 2",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "+",
                        style: TextStyle(
                            color: Color.fromRGBO(76, 76, 76, 1), fontSize: 40),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
