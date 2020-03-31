import 'package:flutter/material.dart';
import 'constraint.dart';
import 'indicator.dart';


class PurchaseScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Image.asset('img3.png'),
                    Positioned(
                      top: 20,
                      left: 15,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(
                              Icons.navigate_before,
                              size: 50,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                          Text(
                            "   Go Premium \n   Get Unlimited Access",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w800),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Indicator(true),
                    Indicator(false),
                    Indicator(false),
                    Indicator(false),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                CustomOptionButton(
                  isActive: false,
                  text: "\$ 20 /Month",
                ),
                SizedBox(
                  height: 20,
                ),
                CustomOptionButton(
                  isActive: true,
                  text: "\$ 48 /Yearly",
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: MaterialButton(
                    color: orangeColor,
                    onPressed: (){Navigator.pop(context);},
                    padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero
                    ),
                    child: Text("Purchase",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w800),), 
                  
                  ),
                )
              ],
            ),
          ],
        ));
  }
}

class CustomOptionButton extends StatelessWidget {
  final isActive, color, text;
  CustomOptionButton({this.isActive, this.color, this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: MaterialButton(
        minWidth: 100,
        color: Color(0xffffebf5),
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        onPressed: () {},
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                  width: 20,
                  height: 30,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: isActive == true?orangeColor:Colors.white),
                  child: isActive == true
                      ? Center(
                        child: Icon(
                            Icons.check,
                            color: Colors.white,
                          ),
                      )
                      : null),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              text,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              width: 20,
            ),
            Chip(
              backgroundColor: orangeColor,
              label: Text(
                "Free Trail",
                style:
                    TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
