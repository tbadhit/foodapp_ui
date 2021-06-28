import 'package:flutter/material.dart';
import 'package:foods/model/menu.dart';
import 'package:foods/ui/widget/custom_tab_bar.dart';
import 'package:foods/ui/widget/menu_list_item.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodPage extends StatefulWidget {
  @override
  _FoodPageState createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            Container(
              margin: EdgeInsets.all(30),
              width: double.infinity,
              height: 15,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.menu),
                  Container(
                    width: 20,
                    height: 15,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/logo-chart.png'))),
                  )
                ],
              ),
            ),

            // search
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 30),
              height: 50,
              decoration: BoxDecoration(
                  color: Color(0xffF6F7FB),
                  borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 16),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                          decoration: InputDecoration.collapsed(
                              hintText: 'Search',
                              hintStyle: GoogleFonts.poppins(
                                  color: Color(0xffA4A4A4),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500))),
                    ),
                    InkWell(
                        child: Icon(Icons.search,
                            size: 15, color: Color(0xffA4A4A4)))
                  ],
                ),
              ),
            ),

            SizedBox(
              height: 30,
            ),

            Container(
              width: double.infinity,
              color: Colors.white,
              child: Column(
                children: [
                  CustomTabBar(
                    selectedIndex: selectedIndex,
                    titles: ['Fast Food', 'Desert', 'Drinks', 'Snacks'],
                    onTap: (index) {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Builder(
                    builder: (_) {
                      List<Menu> menus = (selectedIndex == 0)
                          ? mockMenus
                          : (selectedIndex == 1)
                              ? []
                              : [];
                      return Column(
                        children: [
                          (selectedIndex == 0)
                              ? Container(
                                  width: double.infinity,
                                  margin: EdgeInsets.only(
                                      left: 30, right: 30, bottom: 18),
                                  child: Text(
                                    'Popular Food',
                                    style: GoogleFonts.poppins(
                                        fontSize: 30,
                                        fontWeight: FontWeight.w600),
                                  ),
                                )
                              : SizedBox(),
                          Column(
                            children: menus
                                .map((e) => SingleChildScrollView(
                                      child: Padding(
                                          padding: EdgeInsets.fromLTRB(
                                              30, 0, 30, 16),
                                          child: MenuListItem(
                                            menu: e,
                                          )),
                                    ))
                                .toList(),
                          ),
                          SizedBox(
                            height: 100,
                          )
                        ],
                      );
                    },
                  )
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
