import 'package:defis/models/category.dart';
import 'package:defis/screen/productscreen.dart';
import 'package:flutter/material.dart';

import '../models/product.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  List<Product> mylist = [
    Product(id: 1, name: "TheKitchen-Qhinoa", image: "assets/images/fd.jpg", price: '\$10'),
    Product(id: 2, name: "Rice", image: "assets/images/fd1.jpg", price: '\$15'),
    Product(id: 3, name: "potato", image: "assets/images/fd2.jpg", price: '\$17')
  ];

  List<Category> category =[
    Category(id: 1, name: "Vegan", icon: "assets/images/vegan.png"),
    Category(id: 2, name: "Coffee", icon: "assets/images/coffee.png"),
    Category(id: 3, name: "Donuts", icon: "assets/images/donuts.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff6f5f8),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            // padding: EdgeInsets.all(value),
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      )),
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
                                Text("2")
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 20),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white24,
                            borderRadius: BorderRadius.circular(12)),
                        width: MediaQuery.of(context).size.width,
                        height: 40,
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: 'Search for something  tasty ...',
                              hintStyle: TextStyle(color: Colors.white60),
                              prefixIcon:
                                  Icon(Icons.search, color: Colors.white60),
                              border: InputBorder.none),
                        ),
                      )
                    ],
                  ),
                ),
                
                
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding:
                      EdgeInsets.only(bottom: 20, left: 10, right: 10, top: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      )),
                  child: Column(
                    children: [
                      SizedBox(height: 15),
                      Row(
                        children: [
                          Icon(Icons.repeat_rounded, color: Colors.black),
                          SizedBox(width: 30),
                          Text(
                            "Repeat last order",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Divider(thickness: 1),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Icon(Icons.help_outline_rounded, color: Colors.black),
                          SizedBox(width: 30),
                          Text(
                            "Help me",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Divider(thickness: 1),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Icon(Icons.food_bank_rounded, color: Colors.black),
                          SizedBox(width: 30),
                          Text(
                            "Surprise me",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Top Categories",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                "View all ",
                                style: TextStyle(color: Colors.grey),
                              ),
                              Icon(Icons.arrow_forward, color: Colors.grey)
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Container(
                        // color: Colors.red,
                        height: 50,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: category.length,
                          itemBuilder: (context, i) {
                            return Container(
                              padding: const EdgeInsets.all(10.0),
                              margin: const EdgeInsets.all(5.0),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8)),
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
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Recommanded for you",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                "View all ",
                                style: TextStyle(color: Colors.grey),
                              ),
                              Icon(Icons.arrow_forward, color: Colors.grey)
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Container(
                          // color: Colors.amber,
                          height: 230,
                          child: ListView.builder(
                            itemCount: mylist.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: ((context, index) {
                              return Container(
                                margin: EdgeInsets.all(10),
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.15),
                                        spreadRadius: 5,
                                        blurRadius: 7,
                                        offset: Offset(0, 3), 
                                      ),
                                    ],
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Column(
                                  children: [
                                    CircleAvatar(
                                      maxRadius: 60,
                                      backgroundImage:
                                          AssetImage(mylist[index].image),
                                    ),
                                    SizedBox(height: 20),
                                    Row(
                                      children: [
                                        Container(
                                            width: 100,
                                            child: Text(mylist[index].name,
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w500))),
                                        Text(
                                          mylist[index].price,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              );
                            }),
                          )),

                           SizedBox(height: 20),

                           InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductScreen()));
                            },
                             child: Container(
                              padding: EdgeInsets.all(15),
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(13)
                              ),
                              child: Text("Check out 2 products",
                              textAlign: TextAlign.center,
                               style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                              ),),
                             ),
                           ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
