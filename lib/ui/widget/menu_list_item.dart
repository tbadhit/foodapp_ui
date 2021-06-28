import 'package:flutter/material.dart';
import 'package:foods/model/menu.dart';
import 'package:intl/intl.dart';

class MenuListItem extends StatelessWidget {
  final Menu menu;

  MenuListItem({@required this.menu});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 120,
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
        decoration: BoxDecoration(
          color: Color(0xffF6F7FB),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              children: [
                Container(
                  width: 68,
                  height: 70,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image:
                          DecorationImage(image: AssetImage(menu.picturePath))),
                ),
                Container(
                  margin: EdgeInsets.only(left: 18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        menu.name,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        menu.textFood,
                        style: TextStyle(
                            fontSize: 12,
                            color: Color(0xffA4A4A4),
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        NumberFormat.currency(
                                symbol: 'IDR ',
                                decimalDigits: 0,
                                locale: 'id-ID')
                            .format(menu.price),
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              width: 36,
              height: 36,
              child: FloatingActionButton(
                backgroundColor: Color(0xff11AC6A),
                onPressed: () {},
                elevation: 0,
                child: Icon(Icons.add),
              ),
            )
          ],
        ));
  }
}
