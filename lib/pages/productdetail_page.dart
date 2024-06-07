import 'package:flutter/material.dart';

class productdetail extends StatefulWidget {
  const productdetail({super.key});

  @override
  State<productdetail> createState() => _productdetailState();
}

class _productdetailState extends State<productdetail> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.only(top: 20),
        //gardiat background
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[
                Color(0xff081023),
                Color(0xff172645),
                Color(0xff172645),
                Color(0xff172645),
                Color(0xff081023),
              ],
          )
        ),
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.only(left: 12,right: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: (){
                       Navigator.of(context).pop();
                  },
                   icon: Icon(Icons.arrow_back,color: Colors.white,size: 30)),
                  Badge(
              label: Text('1'),
              textColor: Colors.white,
              backgroundColor:  Color(0xFF4eabe3),
              child: Icon(Icons.shopping_bag,size: 30,color: Colors.white)
              ),
                ],
              ),
            ),
            SizedBox(height: 10,),

            Container(
              padding: EdgeInsets.only(left: 36,right: 36),
              child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //title
       SizedBox(
        width: 130,
         child: Text(
                  'BEST SELLER SHOE 1',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    decoration: TextDecoration.none
                  ),
                  ),
       ),
        //image
        SizedBox(height: 20,),
        Center(
          child: Image.asset('assets/image/627.png',
          fit: BoxFit.fill,
          width: MediaQuery.of(context).size.width*.8,
          )
          ),

          
        SizedBox(height: 40,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
                '\$241',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  decoration: TextDecoration.none
                ),
                ),

               Row(
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    margin: EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.black
                    ),
                    child: Icon(Icons.done,color: Colors.white),
                  ),
                  Container(
                    width: 30,
                    height: 30,
                    margin: EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.blue
                    ),
                  ),
                  Container(
                    width: 30,
                    height: 30,
                    margin: EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.red
                    ),
                  ),
                ],
               )
          ],
        ),
        
        
                ],
              ),
            ),

            SizedBox(height: 20,),
        Expanded(child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[
                Color(0xff081023),
                Color(0xff172645),
                Color(0xff172645),
                Color(0xff172645),
                Color(0xff081023),
              ],
          ),
          borderRadius: BorderRadius.circular(16)
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              
          
                Column(
            crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
 //title
                 Text(
                  'Descrition',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    decoration: TextDecoration.none
                  ),
                  ),
//discription
          SizedBox(height: 10,),
                 Text(
                  'lorem Ipsum is simply dummy text of the printing and typesetting industry,lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    decoration: TextDecoration.none
                  ),
                  ),
                

                  ],
                ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
GestureDetector(
            onTap: () {
            },
            child: Container(
              width: 160,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.only(bottom: 10),
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
                      'Buy Now',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        decoration: TextDecoration.none
                      ),
                      ),
                   ),
            ),
          ),
          GestureDetector(
            onTap: () {
            },
            child: Container(
              width: 160,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Color.fromARGB(255, 111, 195, 240))
              ),
              child: 
                   Center(
             child: Text(
                      'Add to Cart',
                      style: TextStyle(
                        color: Color.fromARGB(255, 111, 195, 240),
                        fontSize: 16,
                        decoration: TextDecoration.none
                      ),
                      ),
                   ),
            ),
          ),
            ],
          ),//button
          
                
            ],
          ),
        ),
        ),
        ),
            
          ],
        ),
      ),
      
      ),
    );
  }
}