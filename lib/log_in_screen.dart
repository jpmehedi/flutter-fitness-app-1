import 'package:flutter/material.dart';
import 'constraint.dart';
import 'home_page.dart';
import 'indicator.dart';
class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              "Pactice Every Day ",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: orangeColor),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              "and Share Your Result",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.w400),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Image.asset("img1.png"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Indicator(false),
              Indicator(false),
              Indicator(false),
              Indicator(true),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: MaterialButton(
              onPressed: () {
                final route = MaterialPageRoute(builder: (context)=>HomePage());
                Navigator.push(context, route);
              },
              color: orangeColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25)
              ),
              padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
              child: Text(
                "Log in with Facebook",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}

