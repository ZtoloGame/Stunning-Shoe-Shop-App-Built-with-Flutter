import 'package:flutter/material.dart';

class cart extends StatefulWidget {
  const cart({super.key});

  @override
  State<cart> createState() => _cartState();
}

class _cartState extends State<cart> {
   @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.only(top: 40,left: 20,right: 20),
        //gardiat background
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[
                Color(0xff081023),
                Color(0xff172645),
                Color(0xff081023),
              ],
          )
        ),
        child: Column(
          children: [
            Text(
                    'cart',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      decoration: TextDecoration.none
                    ),
                    ),
          ],
        ),
        ),
        )
    );
  }
}