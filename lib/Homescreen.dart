import 'package:flutter/material.dart';
import 'package:flutter_market/Bookmark.dart';
import 'package:flutter_market/Discover.dart';
import 'package:flutter_market/Feedback.dart';
import 'package:flutter_market/Feeds.dart';
import 'package:flutter_market/Notifications.dart';
import 'package:flutter_market/Privacy.dart';
import 'package:flutter_market/Terms.dart';
import 'package:gradient_text/gradient_text.dart';

class Homescreen extends StatefulWidget {
  static String tag = 'Homescreen';
  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  TabController _tabcontroller;
  @override
  void initState() {
    super.initState();
    _tabcontroller = new TabController(vsync: this, length: 2);
  }

  @override
  void dispose() {
    _tabcontroller.dispose();

    super.dispose();
  }

  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: SafeArea(
          child: Scaffold(
            key: _scaffoldKey,
            backgroundColor: Color(0xff4181ee),
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(50),
              child: AppBar(
                backgroundColor: Color(0xff4181ee),
                elevation: 0,
                leading: Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: IconButton(
                    icon: Icon(Icons.settings, color: Colors.white),
                    onPressed: () {
                      _scaffoldKey.currentState.openDrawer();
                    },
                  ),
                ),
                title: Center(
                  child:Text(
                    'News App',
                  
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400,color: Colors.white,fontFamily: 'Montserrat'),
                  ),
                ),
                actions: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(right: 5),
                    child: IconButton(
                      icon: Icon(Icons.search, color: Colors.white),
                      onPressed: () {},
                    ),
                  )
                ],
              ),
            ),
            drawer: Drawer(
              child: ListView(
                padding: EdgeInsets.only(top: 15),
                children: <Widget>[
                  ListTile(
                    title: Text('Preferences',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff4181ee),
                          fontFamily: 'Montserrat'
                        )),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text('Bookmarks',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff4181ee),
                          fontFamily: 'Montserrat'
                        )),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context)=>Bookmarkdismiss()
                      ));
                    },
                  ),
                  ListTile(
                    title: Text('Notifications',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff4181ee),
                          fontFamily: 'Montserrat'
                        )),
                    trailing: Icon(
                      Icons.notifications,
                      color: Color(0xff4181ee),
                    ),
                    onTap: () {
                       Navigator.push(context, MaterialPageRoute(
                        builder: (context)=>Notificationscreen()
                      ));
                    },
                  ),
                  ListTile(
                    title: Text('Share this app',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff4181ee),
                          fontFamily: 'Montserrat'
                        )),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xff4181ee),
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text('Rate this app',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff4181ee),
                          fontFamily: 'Montserrat'
                        )),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xff4181ee),
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text('Feedback',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff4181ee),
                          fontFamily: 'Montserrat'
                        )),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xff4181ee),
                    ),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context)=>Feedbackscreen()
                      ));
                    },
                  ),
                  ListTile(
                    title: Text('Terms and conditions',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff4181ee),
                        )),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xff4181ee),
                    ),
                    onTap: () {
                                            Navigator.push(context, MaterialPageRoute(
                        builder: (context)=>Termsconditions()
                      ));
                    },
                  ),
                  ListTile(
                    title: Text('Privacy',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff4181ee),
                          fontFamily: 'Montserrat'
                        )),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xff4181ee),
                    ),
                    onTap: () {
                                            Navigator.push(context, MaterialPageRoute(
                        builder: (context)=>Privacy()
                      ));
                    },
                  )
                ],
              ),
            ),
            bottomNavigationBar: SizedBox(
              
              height: 60,
              child: Container(
                color: Colors.white,
                child: TabBar(
                
                controller: _tabcontroller,
                tabs: [
                  Tab(
                    icon: Icon(
                      Icons.library_books,
                      color: Color(0xFF4181ee),
                      size: 16,
                    ),
                    child: GradientText(
                      'Feeds',
                      gradient: LinearGradient(
                        colors: [Color(0xFF4181ee), Color(0xFF4181ee).withOpacity(0.5)],
                      ),
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.dashboard,
                      color: Color(0xFF4181ee),
                      size: 16,
                    ),
                    child: GradientText(
                      'Discover',
                      gradient: LinearGradient(
                        colors: [Color(0xFF4181ee), Color(0xFF4181ee).withOpacity(0.5)],
                      ),
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
                indicatorColor: Colors.white,
              ),
              )
            ),
            body: TabBarView(
              controller: _tabcontroller,
              children: <Widget>[
                Feeds(),
                Discover(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
