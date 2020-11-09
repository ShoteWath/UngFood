import 'package:flutter/material.dart';

class MyStyle {
  Color darkColor = Colors.blue.shade900;
  Color primaryColor = Colors.green;

  SizedBox mySizedBox() => SizedBox(
        width: 8.0,
        height: 16.0,
      );
  TextStyle mainTitle = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.bold,
    color: Colors.purple,
  );
  TextStyle mainH2Title = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.bold,
    color: Colors.green.shade700,
  );

  Text showTitle(String title) => Text(
        title,
        style: TextStyle(
          fontSize: 28.0,
          color: Colors.blue.shade900,
          fontWeight: FontWeight.bold,
        ),
      );

  Text showTitleh2(String title) => Text(
        title,
        style: TextStyle(
          fontSize: 22.0,
          color: Colors.blue.shade900,
          fontWeight: FontWeight.bold,
        ),
      );

  BoxDecoration myBoxDecoration(String namePic) {
    return BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/$namePic'),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget titleCenter(BuildContext context, String string) {
    return Center(
      child: Container(width: MediaQuery.of(context).size.width*0.5,
        child: Text(
          string,
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Container showLogo() {
    return Container(
      width: 120.0,
      child: Image.asset('assets/scooter.png'),
    );
  }

  MyStyle();
}
