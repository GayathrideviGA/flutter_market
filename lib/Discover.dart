import 'package:flutter/material.dart';

class Discover extends StatefulWidget {
  _DiscoverState createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
  List explore = [
    {
      "catimage":"https://i.imgur.com/gRmu5hL.png",
      "cathead": "Sports"
    },
    {
      "catimage":"https://i.imgur.com/lXBoV2u.png",
      "cathead":"Business"
    },
    {
      "catimage":"https://i.imgur.com/GSQLMPI.png",
      "cathead":"Energy"
    },
    {
      "catimage":"https://i.imgur.com/3IQoFBq.png",
      "cathead":"Startup"
    },
    {
      "catimage":"https://i.imgur.com/nSKdeRC.png",
      "cathead":"Politics"
    },
     {
      "catimage":"https://i.imgur.com/vS1Cod4.png",
      "cathead":"International"
    }
  ];
   List interest = [
    {
      "iimage":"https://i.imgur.com/bqhxLDI.png",
      "ihead": "Trending"
    },
    {
      "iimage":"https://i.imgur.com/yloslin.png",
      "ihead":"Travel"
    },
    {
      "iimage":"https://i.imgur.com/UkXjABq.png",
      "ihead":"Science"
    },
    {
      "iimage":"https://i.imgur.com/4dr22tG.png",
      "ihead":"Fashion"
    },
    {
      "iimage":"https://i.imgur.com/7aM8jv4.png",
      "ihead":"Automobile"
    },
     {
      "iimage":"https://i.imgur.com/Yj2OKAy.png",
      "ihead":"Entertainment"
    },
     {
      "iimage":"https://i.imgur.com/WapC2x4.png",
      "ihead":"Devotional"
    },
     {
      "iimage":"https://i.imgur.com/AlS6Fbg.png",
      "ihead":"Inventions"
    }
  ];
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return ListView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
        Container(
      
      width: width,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topRight: Radius.circular(80)),
          
          ),
     child: SingleChildScrollView(
       child:Column(
         children: <Widget>[
         Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 10, left: 20),
                  child: Text('Hi! 🙋‍♀️🙋‍♂️',
                      style: TextStyle(
                          color: Color(0xff4181ee),
                          fontSize: 26,
                          fontWeight: FontWeight.w900,
                          fontFamily: 'Montserrat')),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 10, left: 20),
                  child: Text('What would you like to explore ?',
                      style: TextStyle(
                          color: Color(0xff4181ee).withOpacity(0.7),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Montserrat')),
                )
              ],
            ),
             Container(
              // width: width,
              height: 120,
              //color: Colors.white,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: explore.length,
                itemBuilder: (context, int index) {
                  return Container(
                      margin: EdgeInsets.only(left: 20, top: 20, bottom: 10),
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        color: Color(0xffffffff),
                       boxShadow: [BoxShadow(color: Color(0xff4181ee).withOpacity(0.7),blurRadius: 2)]
                      ),
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: <Widget>[
                         Container(
                           width: 40,
                           height: 40,
                           decoration: BoxDecoration(
                             image: DecorationImage(
                               image: NetworkImage(explore[index]['catimage']),
                               fit: BoxFit.cover,
                             )
                           ),
                         ),
                         Padding(
                           padding: EdgeInsets.only(top: 10),
                           child: Text(explore[index]['cathead'],style: TextStyle(
                                                    color: Color(0xff4181ee).withOpacity(0.7),
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w400,
                                                    fontFamily: 'Montserrat')),
                         )
                       ],
                     ),
                      );
                },
              ),
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 10, left: 20),
                  child: Text('Interested to find',
                      style: TextStyle(
                          color: Color(0xff4181ee).withOpacity(0.7),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Montserrat')),
                )
              ],
            ),
            Container(
              // width: width,
              height: height/1.5,
              //color: Colors.white,
              child:GridView.builder(
                scrollDirection: Axis.vertical,
                gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10
                ), 
                itemCount: interest.length,
                itemBuilder: (BuildContext context, int index) 
                {
                      return Container(
                      margin: EdgeInsets.only(left: 20, top: 20, bottom: 10,right: 20),
                      width: 180,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        color: Color(0xff4181ee).withOpacity(0.8),
                      
                      ),
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: <Widget>[
                         Container(
                           width: 80,
                           height: 80,
                           decoration: BoxDecoration(
                             image: DecorationImage(
                               image: NetworkImage(interest[index]['iimage']),
                               fit: BoxFit.cover,
                             )
                           ),
                         ),
                         Padding(
                           padding: EdgeInsets.only(top: 15),
                           child: Text(interest[index]['ihead'],style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w600,
                                                    fontFamily: 'Montserrat')),
                         )
                       ],
                     ),
                      );
                },
                
              ),
          
              
            ),
         ],
       )
     ),
    )
      ],
    );
  }
}
