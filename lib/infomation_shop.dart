import 'package:flutter/material.dart';
import 'package:ung_food/add_info_shop.dart';
import 'package:ung_food/my_style.dart';

class InfomationShop extends StatefulWidget {
  @override
  _InfomationShopState createState() => _InfomationShopState();
}

class _InfomationShopState extends State<InfomationShop> {
  void routeToAddInfo() {
    MaterialPageRoute materialPageRoute = MaterialPageRoute(
      builder: (context) => AddInfoShop(),
    );
    Navigator.push(context, materialPageRoute);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        MyStyle()
            .titleCenter(context, 'ยังไม่มีข้อมูล กรุณาเพิ่มข้อมูล ด้วยค่ะ'),
        addAnEditButton(),

      ],
    );
  }

  Row addAnEditButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(margin: EdgeInsets.only(right: 16.0, bottom: 16.0),
              child: FloatingActionButton(
                child: Icon(Icons.edit),
                onPressed: (){
                  routeToAddInfo();
                }
              ),
            )
          ],
        )
      ],
    );
  }
}
