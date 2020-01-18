import 'package:flutter/material.dart';
import 'package:flutter_market/Homescreen.dart';

class Notificationscreen extends StatefulWidget
{
  static String tag='Notification';
  _Notification createState()=> _Notification();
}
class _Notification extends State<Notificationscreen>
{
  final items = List<String>.generate(10, (i) => "Item ${i + 1}");
  Widget build (BuildContext context)
  {
  double width=MediaQuery.of(context).size.width;
  
    
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff4181ee),
                    appBar: PreferredSize(
              preferredSize: Size.fromHeight(50),
              child: AppBar(
                backgroundColor: Color(0xff4181ee),
                elevation: 0,
                leading: Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: IconButton(
                    icon: Icon(Icons.arrow_back_ios,color: Colors.white),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                title: Text(
                    'Notifications',
                  
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400,color: Colors.white,fontFamily: 'Montserrat'),
                  
                ),
                actions: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(right: 5),
                    child: IconButton(
                      icon: Icon(Icons.home, color: Colors.white),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Homescreen()));
                      },
                    ),
                  )
                ],
              ),
            ),
        body: Container(
      width: width,
      decoration: BoxDecoration(
          color: Colors.white,

          borderRadius: BorderRadius.only(topRight: Radius.circular(80)),
          
          ),
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {final item=items[index];
        return Dismissible(
          key: Key(item),
          onDismissed: (direction){
            setState(() {
              items.removeAt(index);
            });
            Scaffold.of(context).showSnackBar(SnackBar(content: Text('Bookmark deleted'),));
          },
          background: Container(
            color: Colors.red,
            
          ),
          child: Container(
               margin: EdgeInsets.only(top:10,bottom: 10,left: 20),
              width: width/1.18,
              height: 100,
              decoration: BoxDecoration(
                color: Color(0xff4181ee).withOpacity(0.7),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [BoxShadow(color: Colors.blueGrey,blurRadius: 2)]
              ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage('https://i0.wp.com/cdn.inc42.com/wp-content/uploads/2020/01/feature-92.jpg?resize=680%2C510&ssl=1'),
                        fit:BoxFit.cover
                      ),
                      borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                )
                  ],
                ),

                Column(
                  children: <Widget>[
                    
                        Container(
                          width: 200,
                          padding: EdgeInsets.only(top: 10),
                          child: Text('Jaipur’s BattRE Launches LoEV Electric Scooter',overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.white),),
                          
                        ),

                    
                        Container(
                          width: 200,
                          padding: EdgeInsets.only(top: 10),
                          child: Text("Jaipur-based BattRE Electric Mobility launched its new electric scooter, LoEV, priced at INR 59K. Just like Ampere Vehicles, BattRE has also decided to sell its e-scooters on both online and offline stores.",overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.black,)),

                        ),
                     
                   
                        Container(
                          width: 200,
                          padding: EdgeInsets.only(top: 20),
                          child: Text('By Sam',overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black)),

                        )
                      

                  ],
                ),


              ],
            ),
            ),
        );
        },

      ),
    ),
      ),
    );
  }
}