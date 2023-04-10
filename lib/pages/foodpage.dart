import 'package:flutter/material.dart';

class FoodPage extends StatefulWidget {
  const FoodPage({super.key});

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 100,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Container(
              width: 50,
              height: 50,
              decoration:
                  BoxDecoration(color: Colors.red[300], shape: BoxShape.circle),
              child: IconButton(
                icon: Icon(Icons.shopping_cart_rounded), color: Colors.white,
                onPressed: () {
                  // Handle icon button press
                },
                // Set shape to CircleBorder
              ),
            ),
          ),
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
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'lib/images/burger.png',
                    width: 230,
                    height: 230,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(
                          width: 30,
                        ),
                        Card(
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.favorite_border,
                                color: Colors.red[300],
                              )),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Card(
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.av_timer,
                                color: Colors.red[300],
                              )),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      '\$ 42',
                      style: TextStyle(fontSize: 43, color: Colors.grey[600]),
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  // Container(
                  //   color: Colors.green,
                  //    height: 30,
                  //    width: 100,
                  //    child: Row(
                  //     children: [
                  //       Expanded(
                  //         flex: 1,
                  //         child: Text(
                  //             '-',
                  //           style:
                  //             TextStyle(fontSize: 40, color: Colors.red[400]),
                  //       ),
                  //     ),
                  //     Expanded(
                  //        flex: 1,
                  //        child: Text(
                  //         '2',
                  //         style:
                  //              TextStyle(fontSize: 30, color: Colors.red[400]),
                  //       ),
                  //      Expanded(
                  //       child: Text(
                  //       '+',
                  //       style:
                  //           TextStyle(fontSize: 30, color: Colors.red[400]),
                  //      ),
                  //      )
                  //   ],
                  //    ),
                  //  ),
                  //  //Row(
                  //  children: [Container(child: Text('Add to Cart'))],
                  // )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  'Featured,',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                  textAlign: TextAlign.left,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Container(
                  height: 90,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(1),
                          decoration: BoxDecoration(
                              color: Colors.pink[100],
                              borderRadius: BorderRadius.circular(15)),
                          height: 80,
                          child: Image.asset('lib/images/cheese.png'),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Column(
                          children: [
                            SizedBox(height: 25.0),
                            Text(
                              'Sweet Cheese',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text('\$ 11')
                          ],
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Container(
                          padding: EdgeInsets.all(1),
                          decoration: BoxDecoration(
                              color: Colors.purple[200],
                              borderRadius: BorderRadius.circular(15)),
                          height: 80,
                          child: Image.asset('lib/images/hot-dog.png'),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Column(
                          children: [
                            SizedBox(height: 30),
                            Text(
                              'Delicious hot dog',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w600),
                            ),
                            SizedBox(height: 15.0),
                            Text('\$ 11')
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Container(
                  height: 90,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(1),
                          decoration: BoxDecoration(
                              color: Colors.pink[100],
                              borderRadius: BorderRadius.circular(15)),
                          height: 80,
                          child: Image.asset('lib/images/pancake.png'),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Column(
                          children: [
                            SizedBox(height: 30),
                            Text(
                              'Fluffy PanCakes',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w600),
                            ),
                            SizedBox(height: 15.0),
                            Text('\$ 5')
                          ],
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Container(
                          padding: EdgeInsets.all(1),
                          decoration: BoxDecoration(
                              color: Colors.pink[100],
                              borderRadius: BorderRadius.circular(15)),
                          height: 80,
                          child: Image.asset('lib/images/pizza.png'),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Column(
                          children: [
                            SizedBox(height: 30),
                            Text(
                              'Pineapple Pizza',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w600),
                            ),
                            SizedBox(height: 15.0),
                            Text('\$ 9')
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
