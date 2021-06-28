import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTabBar extends StatelessWidget {
  final int selectedIndex;
  final List<String> titles;
  final Function(int) onTap;

  CustomTabBar({@required this.titles, this.selectedIndex, this.onTap});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 23,
      child: Stack(
        children: [
          Row(
            children: titles
                .map((e) => Padding(
                      padding: EdgeInsets.only(left: 30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {
                              if (onTap != null) {
                                onTap(titles.indexOf(e));
                              }
                            },
                            child: Text(e,
                                style: (titles.indexOf(e) == selectedIndex)
                                    ? GoogleFonts.poppins(
                                        color: Color(0xff11AC6A),
                                        fontWeight: FontWeight.w600)
                                    : GoogleFonts.poppins(
                                        color: Color(0xffA4A4A4),
                                        fontWeight: FontWeight.w600)),
                          ),
                          Container(
                            width: 20,
                            height: 2,
                            // margin: EdgeInsets.only(top: ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(1.5),
                                color: (titles.indexOf(e) == selectedIndex)
                                    ? Color(0xff11AC6A)
                                    : Colors.transparent),
                          )
                        ],
                      ),
                    ))
                .toList(),
          )
        ],
      ),
    );
  }
}
