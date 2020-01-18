import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class Newsfeedswipe extends StatefulWidget {
  
  _Newsfeedswipe createState() => _Newsfeedswipe();
}

class _Newsfeedswipe extends State<Newsfeedswipe> {
  List latestnews = [
    {
      "image":
          "https://www.thehindu.com/sport/athletics/q0mym7/article30569385.ece/alternates/FREE_355/TH15KUMAR",
      "headline": "Khelo India Youth Games | Ancy and Nuzrat claim gold medals",
      "description":
          "Yashwant Laveti of Andhra Pradesh gave a sparkling performance to bag the boys’ under-21 110m hurdles crown on the final day of athletics in the Khelo",
      "author": "By India Today"
    },
    {
      "image":
          "https://www.biovoicenews.com/wp-content/uploads/2016/03/cotton-ball-1.jpg",
      "headline":
          "Cotton research bodies in India, Uganda to develop new seed variety",
      "description":
          "The Cotton Development and Research Association (CDRA) of Southern India Mills’ Association has signed an agreement with Cotton Development",
      "author": "By India Today"
    },
    {
      "image":
          "https://s3.ap-southeast-1.amazonaws.com/images.deccanchronicle.com/dc-Cover-ommftknk3mtdq0dbjakdbpjjh3-20190117015300.Medi.jpeg",
      "headline": "Police makes arrangements for ‘Kaanum Pongal’ in Chennai",
      "description":
          "Elaborate security arrangements have been made by the Chennai city police and other authorities as thousands of visitors are expected to visit the Marina,",
      "author": "By India Today"
    },
    {
      "image":
          "https://www.thehindu.com/entertainment/movies/7ws0rz/article30572501.ece/ALTERNATES/FREE_960/Pattas",
      "headline":
          "'Pattas' movie review: Masala and martial arts come together in this predictable outing",
      "description":
          "His films rarely overwhelm the viewer with a particular sentiment — for example the father-daughter sentiment in Viswasam. His heroes are not infallible, but they do overcome the difficult situations they are presented with.",
      "author": "By India Today"
    },
    {
      "image":
          "https://th.thgim.com/news/cities/Kochi/f6z04x/article30553004.ece/alternates/FREE_435/13-KI-JAIN-IMPLOSION",
      "headline": "PCB to release findings on pollution levels within a week",
      "description":
          "The demolition of Jain Coral Cove apartment complex was completed by 11.05 a.m. on Sunday, and emissions were observed as expected, said a Kerala State",
      "author": "By India Today"
    }
  ];

  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Stack(
      children: <Widget>[
        new Swiper(
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return Scaffold(
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
                                    image: NetworkImage(
                                        latestnews[index]['image']),
                                    fit: BoxFit.cover),
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
                                              padding: EdgeInsets.only(
                                                  top: 10, left: 10),
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: <Widget>[
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  top: 10, right: 10),
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
                            padding:
                                EdgeInsets.only(top: 20, left: 20, bottom: 10),
                            width: width / 1.2,
                            child: Text(latestnews[index]['headline'],
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize: 16,
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
                            child: Text(latestnews[index]['author'],
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color:Color(0xff4181ee).withOpacity(0.7))),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5, right: 25),
                            child: Text('15 minutes ago',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color:Color(0xff4181ee).withOpacity(0.7))),
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
                              latestnews[index]['description'],
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                  color: Colors.blueGrey,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
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
                                        color:
                                            Color(0xff4181ee).withOpacity(0.5),
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
            );
          },
          itemCount: 3,
          //pagination: new SwiperPagination(),
          // control: new SwiperControl(),
        )
      ],
    )
    ),
    );
  }
}
