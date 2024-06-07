import 'package:flutter/material.dart';
import 'package:shoes_store/pages/productdetail_page.dart';

class productcard extends StatelessWidget {
   final bool isactive;
   final String productname;
   final String productimage;
   final String productprice;
   const productcard({
    super.key,
    required this.isactive,
    required this.productname,
    required this.productimage,
    required this.productprice,
    });

  @override
  Widget build(BuildContext context) {
    return  AnimatedPadding(
      duration: Duration(milliseconds: 400),
      padding:  EdgeInsets.only(
        top: isactive ? 30 : 60,
        left: 20,
        bottom: isactive ? 80 : 110,
        ),
      child: Container(
        padding: EdgeInsets.all(20),
        width: 250,
       decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color:  Color(0xFF172645),
       ),
       child: Column(
        mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
        //title
       SizedBox(
        width: 130,
         child: Text(
                  productname,
                  style: TextStyle(
                    color: Color(0xff4aa9dd),
                    fontSize: 20,
                    decoration: TextDecoration.none
                  ),
                  ),
       ),
        //image
        SizedBox(height: 20,),
        Center(
          child: Image.asset(productimage,
          fit: BoxFit.fill,
          width: MediaQuery.of(context).size.width*.8,
          )
          ),

          //buy
          
        SizedBox(height: 40,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
                '\$${productprice}',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  decoration: TextDecoration.none
                ),
                ),

                GestureDetector(
          onTap: () {
           Navigator.push(context,MaterialPageRoute(builder: (context) =>  productdetail()));
          },
          child: Container(
            width: 100,
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              gradient: LinearGradient(colors: <Color>[
                Color(0xff44aae3),
                Color.fromARGB(255, 111, 195, 240),
                Color(0xff44aae3),
              ])
            ),
            child: 
                 Center(
           child: Text(
                    'View',
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
        )
        ],
       ),
      ),
    );
    
  }
}