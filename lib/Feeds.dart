import 'package:flutter/material.dart';
import 'package:flutter_market/Newsdescription.dart';
import 'package:flutter_market/Newsfeedswiper.dart';

class Feeds extends StatefulWidget {
  _FeedsState createState() => _FeedsState();
}

class _FeedsState extends State<Feeds> {
  List topstories = [
    {
      "image":
          "https://www.thehindu.com/business/6r3nqo/article30009395.ece/ALTERNATES/FREE_960/TH19RELIANCEJIO",
      "headline": "Reliance tests online retail grocery business with Jio Mart"
    },
    {
      "image":
          "https://www.thehindu.com/news/cities/Madurai/rh3698/article30572990.ece/ALTERNATES/FREE_960/JALLIKATTUK",
      "headline": "Jallikattu begins in Madurai, 71 injured"
    },
    {
      "image":
          "https://www.thehindu.com/news/national/mhmrf8/article30577751.ece/ALTERNATES/FREE_960/16THRAJNATHSINGHDEFENCEFLAG-OFF",
      "headline":
          "26USD billion turnover target in aerospace, defence by 2025: Rajnath Singh"
    },
    {
      "image":
          "https://www.thehindu.com/news/international/w5m5ka/article30573379.ece/ALTERNATES/FREE_460/scott",
      "headline":
          "Australian government used public funds to target marginal electorates"
    },
    {
      "image":
          "https://www.thehindu.com/sport/cricket/kwqpyv/article30574023.ece/ALTERNATES/FREE_960/VIRATKOHLINDIAAUSTRALIACRICKET",
      "headline":
          "2nd ODI: Kohli to be back at No.3 after all-openers-on-board strategy backfires"
    }
  ];
  List latestnews = [
    {
      "image":
          "https://www.thehindu.com/sport/athletics/q0mym7/article30569385.ece/alternates/FREE_355/TH15KUMAR",
      "headline": "Khelo India Youth Games | Ancy and Nuzrat claim gold medals",
      "description":
          "Yashwant Laveti of Andhra Pradesh gave a sparkling performance to bag the boys’ under-21 110m hurdles crown on the final day of athletics in the Khelo",
      "author":"By India Today"
    },
    {
      "image":
          "https://www.biovoicenews.com/wp-content/uploads/2016/03/cotton-ball-1.jpg",
      "headline":
          "Cotton research bodies in India, Uganda to develop new seed variety",
      "description":
          "The Cotton Development and Research Association (CDRA) of Southern India Mills’ Association has signed an agreement with Cotton Development",
      "author":"By India Today"
    },
    {
      "image":
          "https://s3.ap-southeast-1.amazonaws.com/images.deccanchronicle.com/dc-Cover-ommftknk3mtdq0dbjakdbpjjh3-20190117015300.Medi.jpeg",
      "headline": "Police makes arrangements for ‘Kaanum Pongal’ in Chennai",
      "description":
          "Elaborate security arrangements have been made by the Chennai city police and other authorities as thousands of visitors are expected to visit the Marina,",
      "author":"By India Today"
    },
    {
      "image":
          "https://www.thehindu.com/entertainment/movies/7ws0rz/article30572501.ece/ALTERNATES/FREE_960/Pattas",
      "headline":
          "'Pattas' movie review: Masala and martial arts come together in this predictable outing",
      "description":
          "His films rarely overwhelm the viewer with a particular sentiment — for example the father-daughter sentiment in Viswasam. His heroes are not infallible, but they do overcome the difficult situations they are presented with.",
      "author":"By India Today"
    },
    {
      "image":
          "https://th.thgim.com/news/cities/Kochi/f6z04x/article30553004.ece/alternates/FREE_435/13-KI-JAIN-IMPLOSION",
      "headline": "PCB to release findings on pollution levels within a week",
      "description":
          "The demolition of Jain Coral Cove apartment complex was completed by 11.05 a.m. on Sunday, and emissions were observed as expected, said a Kerala State",
     "author":"By India Today"
    }
  ];
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topRight: Radius.circular(80)),
          
          ),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 10, left: 20),
                  child: Text('Top Stories',
                      style: TextStyle(
                          color: Color(0xff4181ee),
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Montserrat')),
                )
              ],
            ),
            Container(
              // width: width,
              height: 160,
              //color: Colors.white,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: topstories.length,
                itemBuilder: (context, int index) 
                {
                  return Container(
                      margin: EdgeInsets.only(left: 20, top: 10, bottom: 10,right: 10),
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: NetworkImage(topstories[index]['image']),
                              fit: BoxFit.cover)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            width: 100,
                            height: 30,
                            decoration: BoxDecoration(
                                color: Color(0xff4181ee).withOpacity(0.6),
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10))),
                            child: Padding(
                              padding: EdgeInsets.all(5),
                              child: Text(topstories[index]['headline'],
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                  )),
                            ),
                          )
                        ],
                      ));
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 10, left: 20),
                  child: Text('Latest News',
                      style: TextStyle(
                          color: Color(0xff4181ee),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Montserrat')),
                ),
                Padding(
                    padding: EdgeInsets.only(top: 10, right: 20),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context)=>Newsfeedswipe()
                        ));
                      },
                      child: Text('View all',
                          style: TextStyle(
                              color: Color(0xff4181ee),
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Montserrat')),
                    ))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 5, left: 20),
                  child: Text('Updated 15 mins ago',
                      style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Montserrat')),
                ),
              ],
            ),
            Container(
              width: width,
              height: 500,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: latestnews.length,
                itemBuilder: (context, int index) {
                  return InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context)=>Newsdescription(
                        headernews: latestnews[index]['headline'],
                        mainImage: latestnews[index]['image'],
                        authorName: latestnews[index]['author'],
                        descriptor: latestnews[index]['description'],
                      )));
                    },
                    child: Stack(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(
                                top: 20, left: 15, right: 15, bottom: 10),
                            width: width / 1.1,
                            height: 110,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Color(0xff4181ee), blurRadius: 2)
                                ]),
                            child: Stack(
                              children: <Widget>[
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: <Widget>[
                                        Container(
                                          width: width / 1.5,
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                                top: 2, left: 80),
                                            child: Text(
                                                latestnews[index]['headline'],
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                    color: Color(0xff4181ee),
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w600,
                                                    fontFamily: 'Montserrat')),
                                          ),
                                        ),
                                        IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.bookmark_border,
                                            size: 20,
                                            color: Color(0xff4181ee),
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: <Widget>[
                                        Container(
                                          width: width / 1.5,
                                          height: 30,
                                          child: Padding(
                                            padding: EdgeInsets.only(left: 35),
                                            child: Text(
                                                latestnews[index]
                                                    ['description'],
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                    color: Colors.blueGrey,
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w400,
                                                    fontFamily: 'Montserrat')),
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: <Widget>[
                                        Padding(
                                          padding: EdgeInsets.only(
                                              right: 10, bottom: 5),
                                          child: Text('By Indiatoday',
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                  color: Color(0xff4181ee)
                                                      .withOpacity(0.7),
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w400,
                                                  fontFamily: 'Montserrat')),
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            margin:
                                EdgeInsets.only(top: 10, left: 15, bottom: 15),
                            width: 120,
                            height: 130,
                            decoration: BoxDecoration(
                                //color: Colors.white,
                                image: DecorationImage(
                                    image: NetworkImage(
                                        latestnews[index]['image']),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      color: Color(0xff4181ee), blurRadius: 8)
                                ]),
                          ),
                        ],
                      ),
                    ],
                  ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
