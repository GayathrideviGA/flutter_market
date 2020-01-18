import 'package:flutter/material.dart';
import 'package:flutter_market/Homescreen.dart';

class Feedbackscreen extends StatefulWidget
{
  static String tag='Feedbackscreen';
  _Feedbackscreen createState()=> _Feedbackscreen();
}
class _Feedbackscreen extends State<Feedbackscreen>
{
  final scaffoldKey = new GlobalKey<ScaffoldState>();
  final formKey = new GlobalKey<FormState>();

  Widget build (BuildContext context)
  {
  double width=MediaQuery.of(context).size.width;
  double height = MediaQuery.of(context).size.height;
    
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
                    'Feedback',
                  
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
      height: height,
      decoration: BoxDecoration(
          color: Colors.white,

          borderRadius: BorderRadius.only(topRight: Radius.circular(80)),
          
          ),
          child: SingleChildScrollView(
          child: Stack(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(padding: EdgeInsets.all(20),child: Text('Suggest your points to make this application\nmore better',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Colors.blueGrey)),)

                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 100,
                      height: 100,
                      margin: EdgeInsets.only(top: 20),
                      decoration: BoxDecoration(
//                        borderRadius: BorderRadius.circular(100),
                        image: DecorationImage(
                          image: AssetImage('assets/Feedback.gif'),
                          fit: BoxFit.cover
                        )
                      ),
                    ),
                  
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(padding: EdgeInsets.only(top: 250,left: 50),
                  child: Form(
                    key: formKey,
                    child:Column(
                      children: <Widget>[
                        TextFormField(
                          decoration: new InputDecoration(
                            icon: Icon(Icons.person),
                            labelText: 'Name',
                            hintText: 'Enter your name',
                            border: InputBorder.none
                          ),
                        ),
                        TextFormField(
                          decoration: new InputDecoration(
                            icon: Icon(Icons.mail),
                            labelText: 'Mail',
                            hintText: 'Enter your mail id',
                            border: InputBorder.none
                          ),
                          
                        ),
                        TextFormField(
                          decoration: new InputDecoration(
                            icon: Icon(Icons.feedback),
                            labelText: 'Feedback',
                            hintText: 'Enter your Feedback here',
                            border: InputBorder.none
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(top: 50,bottom: 10),child: new Material(
                          borderRadius: BorderRadius.circular(10),
                          shadowColor: Colors.blue[300],
                          elevation: 5,
                          child: MaterialButton(
                            shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10)),
                            minWidth: 200,
                            height: 50,
                            color:Color(0xff4181ee).withOpacity(0.9),
                            child: Text('Submit',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w400),),
                            onPressed: (){
                              
                            },

                          ),
                        )),
                      ],
                    )
                  ),
                ),
              ],
            )
          ],
        ),
        ),
          ),
      ),
    );
  }
}