import 'dart:ui';

import 'package:defis/screen/orderscreen.dart';
import 'package:flutter/material.dart';

import '../models/category.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  List<Category> category = [
    Category(id: 1, name: "Vegan", icon: "assets/images/vegan.png"),
    Category(id: 2, name: "Coffee", icon: "assets/images/coffee.png"),
    // Category(id: 3, name: "Donuts", icon: "assets/images/donuts.png"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                padding: EdgeInsets.all(20),
                color: Colors.black,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "TheKitchen",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                              left: 8, right: 8, top: 5, bottom: 5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Color(0xffcdfb12)),
                          child: Row(
                            children: [
                              Icon(
                                Icons.shopping_cart,
                                size: 20,
                              ),
                              SizedBox(width: 5),
                              Text("1")
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 70,
                child: Container(
                  // margin: EdgeInsets.all(20),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Color(0xfff0eff2),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(35),
                        topRight: Radius.circular(35),
                      )),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(20),
                        height: 260,
                        width: 260,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(1),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3),
                              ),
                            ],
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/images/fd.jpg"))),
                      ),
                      Container(
                        padding: EdgeInsets.all(20),
                        width: MediaQuery.of(context).size.width,
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("TheKitchen - Quinoa",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20)),
                            SizedBox(height: 15),
                            Text("-240 g",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w600)),
                            SizedBox(height: 15),
                            Container(
                                height: 45,
                                child: ListView.builder(
                                  itemCount: category.length,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: ((context, i) {
                                    return Container(
                                      margin: EdgeInsets.all(5),
                                      child: Row(
                                        children: [
                                          Image.asset(category[i].icon),
                                          SizedBox(width: 8),
                                          Text(
                                            category[i].name,
                                            style: TextStyle(fontSize: 16.0),
                                          ),
                                        ],
                                      ),
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: Color(0xfff5f4f7)),
                                    );
                                  }),
                                )),
                            SizedBox(height: 15),
                            Divider(thickness: 1),
                            SizedBox(height: 15),
                            Text("NUtritional value per 100 g",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w600)),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("198",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black38)),
                                Text("13.1",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black38)),
                                Text("13.4",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black38)),
                                Text("5.8",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black38)),
                              ],
                            ),
                            SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width / 3,
                                  padding: EdgeInsets.all(13),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color(0xffe8e8e8)),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("-",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          )),
                                      Text("1",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          )),
                                      Text("+",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          )),
                                    ],
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                OrderScreen()));
                                  },
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width / 2.2,
                                    padding: EdgeInsets.all(13),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.black),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Add to cart",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "\$20",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
