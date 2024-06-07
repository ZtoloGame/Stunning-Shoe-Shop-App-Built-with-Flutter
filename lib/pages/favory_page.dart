import 'package:flutter/material.dart';

class favory extends StatefulWidget {
  const favory({super.key});

  @override
  State<favory> createState() => _favoryState();
}

class _favoryState extends State<favory> {
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
                    'favory',
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