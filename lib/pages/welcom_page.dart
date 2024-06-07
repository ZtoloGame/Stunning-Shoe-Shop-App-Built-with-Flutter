import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shoes_store/pages/home.dart';

class welcompage extends StatefulWidget {
  const welcompage({super.key});

  @override
  State<welcompage> createState() => _welcompageState();
}

class _welcompageState extends State<welcompage> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Container(
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            //logo
                Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(90),
                  gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: <Color>[
                  Color(0xff1d3957),
                  Color(0xff295272),
                ],)
                ),
                child:  OverflowBox(
                  maxHeight: 60,
                  maxWidth: 140,
                  child: Container(
                    width: 140,
                    height: 60,
                  child: Align(
                    alignment: Alignment(1, .5),
                    child: Text(
                      'Shoe.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        decoration: TextDecoration.none
                      ),
                      ),
                  ),
                                ),
                ),
              ),
             
        //image
        SizedBox(height: 40,),
        Center(
          child: Image.asset('assets/image/627.png',
          fit: BoxFit.fill,
          width: MediaQuery.of(context).size.width*.8,
          )
          ),
      
        //title
        SizedBox(height: 40,),
       Text(
                'THE RUNING HAS JUST BEGUN',
                style: TextStyle(
                  color: Color(0xff4aa9dd),
                  fontSize: 32,
                  decoration: TextDecoration.none
                ),
                ),

      
        //discription
        SizedBox(height: 20,),
       Text(
                'lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  decoration: TextDecoration.none
                ),
                ),
      
        //button
        SizedBox(height: 40,),
        GestureDetector(
          onTap: () {
           Navigator.push(context,MaterialPageRoute(builder: (context) =>  home()));
          },
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(colors: <Color>[
                Color(0xff44aae3),
                Color.fromARGB(255, 111, 195, 240),
                Color(0xff44aae3),
              ])
            ),
            child: 
                 Center(
           child: Text(
                    'Get Started',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      decoration: TextDecoration.none
                    ),
                    ),
                 ),
          ),
        )
      
          ],
        ),
      
      
      ),
    );
  }
}