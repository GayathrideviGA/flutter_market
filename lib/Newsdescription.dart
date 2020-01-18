import 'package:flutter/material.dart';

class Newsdescription extends StatelessWidget {
  final String headernews;
  final String descriptor;
  final String authorName;
  final String timing;
  final String mainImage;
  final String nurl;

  // In the constructor, require a Todo.
  Newsdescription(
      {Key key,
      @required this.headernews,
      this.descriptor,
      this.authorName,
      this.timing,
      this.mainImage,
      this.nurl})
      : super(key: key);

  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                      width: width,
                      height: height / 2.8,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                            image: NetworkImage(mainImage), fit: BoxFit.cover),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(50),
                            bottomRight: Radius.circular(50)),
                      ),
                      child: Stack(
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Padding(
                                      padding:
                                          EdgeInsets.only(top: 10, left: 10),
                                      child: IconButton(
                                        icon: Icon(
                                          Icons.arrow_back_ios,
                                          color: Colors.white,
                                        ),
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                      ))
                                ],
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  Padding(
                                      padding:
                                          EdgeInsets.only(top: 10, right: 10),
                                      child: IconButton(
                                        icon: Icon(
                                          Icons.bookmark,
                                          color: Colors.white,
                                        ),
                                        onPressed: () {},
                                      ))
                                ],
                              ),
                            ],
                          )
                        ],
                      ))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(top: 20, left: 20, bottom: 10),
                    width: width / 1.2,
                    child: Text(headernews,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w500,
                            color: Colors.black)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10, right: 10),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.share),
                      color: Color(0xff4181ee),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 5, left: 25),
                    child: Text(authorName,
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Montserrat',
                            color: Color(0xff4181ee).withOpacity(0.7))),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5, right: 25),
                    child: Text('15 minutes ago',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Montserrat',
                            color: Color(0xff4181ee).withOpacity(0.7))),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(top: 20),
                    width: width / 1.15,
                    // height: 200,
                    child: Text(
                      descriptor,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Montserrat',
                          height: 1.8),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  InkWell(
                    onTap: () {},
                    child: Container(
                      margin: EdgeInsets.only(top: 20, right: 30),
                      width: 100,
                      height: 30,
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.5),
                          boxShadow: [
                            BoxShadow(
                                color: Color(0xff4181ee).withOpacity(0.5),
                                blurRadius: 2)
                          ],
                          borderRadius: BorderRadius.circular(50)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text('Read more',
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff4181ee)))
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    ),
    );
  }
}
