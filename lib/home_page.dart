import 'package:flutter/material.dart';
import 'constraint.dart';
import 'purchase_screen.dart';
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffcfeeff),
      body: Column(
        children: <Widget>[
          Image.asset('img2.png'),
          Expanded(
            child: Container(
              color: Colors.white,
              child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                itemExtent: 110,
                itemCount: fitnessData.length,
                itemBuilder: (build, index) => CustomCard(
                  color: fitnessData[index]['color'],
                  title: fitnessData[index]['title'],
                  imgUrl: fitnessData[index]['imgUrl'],
                  time: fitnessData[index]['time'],
                  complete: fitnessData[index]['complete'],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  final color, title, imgUrl, time, complete;

  CustomCard({this.color, this.title, this.imgUrl, this.time, this.complete});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>PurchaseScreen(),));
      },
      child: Card(
        margin: EdgeInsets.only(bottom: 20),
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Color(color)),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(color)),
                child: Image.asset(imgUrl),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.access_time,
                        color: orangeColor,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(time)
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.calendar_today,
                        color: orangeColor,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(complete)
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
