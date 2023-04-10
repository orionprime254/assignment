import 'package:assignment/cards/foodcard.dart';
import 'package:assignment/pages/foodpage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(
              Icons.person,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  'SEARCH FOR',
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.w700),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  'RECIPES',
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(
                  decoration: InputDecoration(
                      fillColor: Colors.grey[600],
                      prefixIcon: Icon(Icons.search),
                      hintText: 'Search',
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade600),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade600),
                      )),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  'Recommended',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 250,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => FoodPage()),
                        );
                      },
                      child: FoodCard(
                        imagePath: 'lib/images/burger.png',
                        foodName: 'Hamburg',
                        foodPrice: '21',
                        color: Colors.brown[100],
                      ),
                    ),
                    FoodCard(
                      imagePath: 'lib/images/french-fries.png',
                      foodName: 'Chips',
                      foodPrice: '15',
                      color: Colors.lightBlue[100],
                    ),
                    FoodCard(
                        foodName: 'Hot Dog',
                        foodPrice: '10',
                        imagePath: 'lib/images/hot-dog.png',
                        color: Colors.lightGreen[100]),
                    SizedBox(
                      height: 30,
                    ),
                    //Container(
                    //  height: 50,
                    //  child: ListView(
                    //   scrollDirection: Axis.horizontal,
                    //    children: [
                    //     Text('FEATURED'),
                    //     Text('COMBOS'),
                    //     Text('FAVORITES'),
                    //     Text('RECENT'),
                    //   ],
                    // ),
                    //  ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(1),
                          decoration: BoxDecoration(
                              color: Colors.pink[100],
                              borderRadius: BorderRadius.circular(15)),
                          height: 80,
                          child: Image.asset('lib/images/hot-dog.png'),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Column(
                          children: [
                            Text('Delicious hot dog'),
                            Row(
                              children: [
                                Text('\$ 6'),
                                SizedBox(
                                  width: 10,
                                ),
                                Text('\$18'),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        IconButton(
                            iconSize: 40,
                            onPressed: () {},
                            icon: Image.asset('lib/images/plus.png'))
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(1),
                          decoration: BoxDecoration(
                              color: Colors.pink[100],
                              borderRadius: BorderRadius.circular(15)),
                          height: 80,
                          child: Image.asset('lib/images/hot-dog.png'),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Column(
                          children: [
                            Text('Delicious hot dog'),
                            Row(
                              children: [
                                Text('\$ 6'),
                                SizedBox(
                                  width: 10,
                                ),
                                Text('\$18'),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        IconButton(
                            iconSize: 40,
                            onPressed: () {},
                            icon: Image.asset('lib/images/plus.png'))
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(1),
                          decoration: BoxDecoration(
                              color: Colors.pink[100],
                              borderRadius: BorderRadius.circular(15)),
                          height: 80,
                          child: Image.asset('lib/images/hot-dog.png'),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Column(
                          children: [
                            Text('Delicious hot dog'),
                            Row(
                              children: [
                                Text('\$ 6'),
                                SizedBox(
                                  width: 10,
                                ),
                                Text('\$18'),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        IconButton(
                            iconSize: 40,
                            onPressed: () {},
                            icon: Image.asset('lib/images/plus.png'))
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
