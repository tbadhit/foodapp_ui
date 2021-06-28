import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuDetailPage extends StatefulWidget {
  @override
  _MenuDetailPageState createState() => _MenuDetailPageState();
}

class _MenuDetailPageState extends State<MenuDetailPage> {
  int quantity = 1;
  int selectedIndex = 0;
  Function(int) onTap;
  List<String> sizes = ['S', 'M', 'L'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              // Icon appbar
              Container(
                width: double.infinity,
                height: 24,
                margin: EdgeInsets.all(30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 8,
                      height: 14,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/back-arrow.png'))),
                    ),
                    Container(
                      width: 4,
                      height: 16,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/setting.png'))),
                    )
                  ],
                ),
              ),
              // Text & Gambar
              Container(
                width: double.infinity,
                height: 363,
                margin: EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Steak House',
                        style: GoogleFonts.poppins(
                            fontSize: 30, fontWeight: FontWeight.w600)),
                    Text('Our very own! Smashed \n beef burgers',
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffA4A4A4))),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      width: 315,
                      height: 216,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image:
                                  AssetImage('assets/hamburger-detail.png'))),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              // buat size :
              Container(
                width: double.infinity,
                height: 85,
                margin: EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Size :',
                        style:
                            GoogleFonts.poppins(fontWeight: FontWeight.w500)),
                    SizedBox(
                      height: 4,
                    ),
                    Row(
                        children: sizes
                            .map((e) => GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      selectedIndex = sizes.indexOf(e);
                                    });
                                  },
                                  child: Container(
                                    width: 60,
                                    height: 60,
                                    margin: EdgeInsets.only(right: 20),
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color:
                                            (sizes.indexOf(e) == selectedIndex)
                                                ? Color(0xff11AC6A)
                                                : Color(0xffF6F7FB)),
                                    child: Center(
                                      child: Text(
                                        e,
                                        style: GoogleFonts.poppins(
                                            fontSize: 24,
                                            color: (sizes.indexOf(e) ==
                                                    selectedIndex)
                                                ? Colors.white
                                                : Colors.black),
                                      ),
                                    ),
                                  ),
                                ))
                            .toList())
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              // Quantity :
              Container(
                width: double.infinity,
                height: 60,
                margin: EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      child: Text('Quantity',
                          style:
                              GoogleFonts.poppins(fontWeight: FontWeight.w500)),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 35,
                          height: 35,
                          child: FloatingActionButton(
                            elevation: 0,
                            backgroundColor: Color(0xffF6F7FB),
                            onPressed: () {
                              setState(() {
                                quantity = max(1, quantity - 1);
                              });
                            },
                            child: Text(
                              '-',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                        Container(
                          width: 12,
                          margin: EdgeInsets.symmetric(horizontal: 12),
                          child: Text(quantity.toString(),
                              style: GoogleFonts.poppins(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                        ),
                        Container(
                          width: 35,
                          height: 35,
                          child: FloatingActionButton(
                            elevation: 0,
                            backgroundColor: Color(0xff11AC6A),
                            onPressed: () {
                              setState(() {
                                quantity = min(999, quantity + 1);
                              });
                            },
                            child: Text(
                              '+',
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),

              SizedBox(
                height: 40,
              ),

              Container(
                width: double.infinity,
                height: 60,
                margin: EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Price',
                          style: GoogleFonts.poppins(
                              color: Color(0xffA4A4A4),
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 9,
                        ),
                        Text(
                          'IDR 43.999',
                          style: GoogleFonts.poppins(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          child: FloatingActionButton(
                            elevation: 0,
                            backgroundColor: Color(0xffF6F7FB),
                            onPressed: () {},
                            child: Icon(
                              Icons.favorite,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: 60,
                          height: 60,
                          child: FloatingActionButton(
                              elevation: 0,
                              backgroundColor: Color(0xff11AC6A),
                              onPressed: () {},
                              child: Container(
                                width: 24,
                                height: 18,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/logo-cart-white.png'))),
                              )),
                        )
                      ],
                    )
                  ],
                ),
              ),

              SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}
