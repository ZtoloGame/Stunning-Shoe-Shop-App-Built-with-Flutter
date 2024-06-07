import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shoes_store/PagingScrollPhysics.dart';
import 'package:shoes_store/data/produitsdata.dart';
import 'package:shoes_store/widget/productcard.dart';


class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homeState();
}

class _homeState extends State<homepage> {
  int _selectedangel = 0;
  ScrollController scrollcon = ScrollController();
  int _selectedproduct = 0;

List currproduitsdata = [
  produitsdata.bestsellerdata,
  produitsdata.fetureddata,
  produitsdata.newestdata,
  produitsdata.upcomingdata,
];

  
  void changeangel(int index) {
    setState(() {
      _selectedangel = index;
      scrollcon.jumpTo(0);
    });
  }

  @override
  void initState() {
    super.initState();
    scrollcon.addListener(() {
      if (scrollcon.offset > 0) {
        setState(() {
        _selectedproduct = (scrollcon.offset/270).round();
        });
      }
    });
  }

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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: (){}, 
                icon:Icon(Icons.sort,color: Colors.white,)
                ),
           Row(
              children: [
                IconButton(
                  onPressed: (){}, 
                icon:Icon(Icons.search,color: Colors.white,)
                ),
                IconButton(
                  onPressed: (){}, 
                icon:Icon(Icons.tune,color: Colors.white,)
                ),
              ],
            ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: (){changeangel(0);},
                 child: Text(
                  'Best Seller',
                    style: TextStyle(
                      color: _selectedangel==0 ? Color(0xFF4eabe3) : Colors.white,
                      fontSize: 14,
                    ),)
                 ),
                TextButton(
                  onPressed: (){changeangel(1);},
                 child: Text(
                  'Fetured',
                    style: TextStyle(
                      color: _selectedangel==1 ? Color(0xFF4eabe3) : Colors.white,
                      fontSize: 14,
                    ),)
                 ),
                TextButton(
                  onPressed: (){changeangel(2);},
                 child: Text(
                  'Newest',
                    style: TextStyle(
                      color: _selectedangel==2 ? Color(0xFF4eabe3) : Colors.white,
                      fontSize: 14,
                    ),)
                 ),
                TextButton(
                  onPressed: (){changeangel(3);},
                 child: Text(
                  'Upcoming',
                    style: TextStyle(
                      color: _selectedangel==3 ? Color(0xFF4eabe3) : Colors.white,
                      fontSize: 14,
                    ),)
                 ),
              ],
            ),
            SizedBox(height: 20,),
            Expanded(
              child: ListView.builder(
              controller: scrollcon,
              physics: PagingScrollPhysics(itemDimension: 270),
               scrollDirection: Axis.horizontal,
               itemCount: produitsdata.bestsellerdata.length,
               itemBuilder: (BuildContext context, int index) {
                return productcard(
                  isactive: _selectedproduct==index ? true : false,
                  productname: currproduitsdata[_selectedangel][index][0],
                  productimage: currproduitsdata[_selectedangel][index][1],
                  productprice: currproduitsdata[_selectedangel][index][2],
                  );
              },
                         ),
            ),
          ],
        ),
        ),
        )
    );
  }
}