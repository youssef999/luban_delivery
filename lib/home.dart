import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'order_requests.dart';


class Home extends StatelessWidget {

  FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.white,
          title: Center(
            child: new Text(
              " Luban ",
              style: TextStyle(
                  color: Colors.green, fontSize: 23, fontWeight: FontWeight.w700),
            ),
          ),
        ),
        body: Container(
            child: Container(
                color: Colors.white,
                child:  Column(
                  //   crossAxisAlignment:CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 1,
                    ),
                    Container(

                        width:400,
                        height:290,
                        child: Image.asset(
                          "assets/wh3.jpeg",
                        )),
                    SizedBox(
                        height: 10
                    ),

                    Container(
                        width: 140,
                        child: FlatButton(
                          color: Colors.red,
                          child: Center(
                            child: Text(
                              " الطلبات ",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          textColor: Colors.white,
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                                  return  OrdersRequest();

                                }));
                          },
                        )),

                  ],
                ))));
  }
}
