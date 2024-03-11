import 'package:cafe_park/src/find_a_store_screen/find_a_store_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _pages = [
    Scaffold(
      appBar: const PreferredSize(
        preferredSize:
            Size.fromHeight(50.0), // Adjust the preferred height as needed
        child: CustomAppBar(),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          const Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Text(
                "Good Afternoon, Ankur!",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            color: const Color(0xffEBF2EF), // Set the background color here
            padding:
                const EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    const ImageIcon(AssetImage('assets/images/coin.png')),
                    const Text(
                      'Coins',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w300),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, top: 2, bottom: 2),
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      child: const Text(
                        "66",
                        style: TextStyle(fontSize: 10),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    const ImageIcon(AssetImage('assets/images/Wallet.png')),
                    const Text(
                      'Wallet',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w300),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, top: 2, bottom: 2),
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      child: const Text(
                        "861+",
                        style: TextStyle(fontSize: 10),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    const ImageIcon(AssetImage('assets/images/discount.png')),
                    const Text(
                      'Offers',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w300),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, top: 2, bottom: 2),
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      child: const Text(
                        "3 new offers",
                        style: TextStyle(fontSize: 10),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    const ImageIcon(AssetImage('assets/images/shop.png')),
                    const Text(
                      'Cafes',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w300),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, top: 2, bottom: 2),
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      child: const Text(
                        "1 nearby",
                        style: TextStyle(fontSize: 10),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
              child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 10, bottom: 10),
                  decoration: const BoxDecoration(
                      color: Color(0xffEBF2EF),
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  child: const Row(
                    children: [
                      ImageIcon(AssetImage('assets/images/colored_wallet.png')),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Total saving ₹1359",
                        style: TextStyle(fontSize: 13),
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      Icon(Icons.chevron_right_outlined)
                    ],
                  ))),
          const SizedBox(
            height: 20,
          ),
          Center(
              child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 10, bottom: 10),
                  decoration: const BoxDecoration(
                      color: Color(0XFF307A59),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(8))),
                  child: const Row(
                    children: [
                      ImageIcon(AssetImage('assets/images/star.png')),
                      SizedBox(
                        width: 10,
                      ),
                      Column(children: [
                        Text(
                          "Partner",
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                        Text(
                          "Level 1",
                          style: TextStyle(fontSize: 10, color: Colors.white),
                        )
                      ]),
                      Spacer(
                        flex: 1,
                      ),
                      Column(children: [
                        Text(
                          "1/5",
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                        Text(
                          "Orders",
                          style: TextStyle(fontSize: 10, color: Colors.white),
                        )
                      ]),
                      Spacer(
                        flex: 1,
                      ),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "14 Orders in 53 days",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white),
                            ),
                            Text(
                              "Orders",
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white),
                            )
                          ]),
                      Spacer(
                        flex: 1,
                      ),
                      Icon(Icons.chevron_right_outlined, color: Colors.white)
                    ],
                  ))),
          Center(
              child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 10, bottom: 10),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        bottom: BorderSide(
                          color: Colors
                              .black, // Set the border color for the bottom side
                          width:
                              0.5, // Set the border width for the bottom side
                        ),
                        left: BorderSide(
                          color: Colors
                              .black, // Set the border color for the left side
                          width: 0.5, // Set the border width for the left side
                        ),
                        right: BorderSide(
                          color: Colors
                              .black, // Set the border color for the right side
                          width: 0.5, // Set the border width for the right side
                        ),
                      ),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(8),
                          bottomRight: Radius.circular(8))),
                  child: const Row(
                    children: [
                      ImageIcon(
                        AssetImage('assets/images/discount.png'),
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "On next level",
                        style: TextStyle(fontSize: 13, color: Colors.grey),
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      Text(
                        "1 Free Beverage",
                        style: TextStyle(fontSize: 13, color: Colors.grey),
                      )
                    ],
                  ))),
          const SizedBox(
            height: 20,
          ),
          const Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Text(
                "Handcrafter Curation",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
              child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 10, bottom: 10),
                  decoration: const BoxDecoration(
                      color: Color(0XFF307A59),
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  child: const Row(
                    children: [
                      Text(
                        "Explore our menu",
                        style: TextStyle(fontSize: 13, color: Colors.white),
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      Icon(Icons.chevron_right_outlined, color: Colors.white)
                    ],
                  ))),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            child: const Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Image(image: AssetImage('assets/images/beverage.png')),
                    Text("Beverages")
                  ],
                ),
                Spacer(
                  flex: 1,
                ),
                Column(
                  children: [
                    Image(image: AssetImage('assets/images/food.png')),
                    Text("Food")
                  ],
                ),
                Spacer(
                  flex: 1,
                ),
                Column(
                  children: [
                    Image(image: AssetImage('assets/images/meal.png')),
                    Text("Meal Combo")
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            child: const Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Image(image: AssetImage('assets/images/coffee.png')),
                    Text("Coffee")
                  ],
                ),
                Spacer(
                  flex: 1,
                ),
                Column(
                  children: [
                    Image(image: AssetImage('assets/images/quick_bite.png')),
                    Text("Quick Bites")
                  ],
                ),
                Spacer(
                  flex: 1,
                ),
                Column(
                  children: [
                    Image(image: AssetImage('assets/images/merchandise.png')),
                    Text("Merchandise")
                  ],
                )
              ],
            ),
          )
        ],
      )),
    ),
    const ImageIcon(AssetImage('assets/images/Document.png')),
    const ImageIcon(AssetImage('assets/images/Present.png')),
  ];

  int pageIndex = 0;
  void _pageSelect(int index) {
    setState(() {
      pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 0,
      ),
      body: _pages[pageIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _pageSelect,
        currentIndex: pageIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/images/Document.png')),
            label: 'Menu',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/images/Present.png')),
            label: 'Rewards',
          ),
        ],
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Size get preferredSize =>
      const Size.fromHeight(50.0); // Adjust the preferred height as needed

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0.0, // Remove the app bar shadow
      automaticallyImplyLeading: false,
      centerTitle: false,
      title: Align(
        alignment: Alignment.centerLeft,
        child: Transform(
            // you can forcefully translate values left side using Transform
            transform: Matrix4.translationValues(
                -MediaQuery.of(context).size.width / 2 + 100, 0.0, 0.0),
            child: Directionality(
                textDirection: TextDirection.rtl,
                child: Row(children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      // Handle Find a store button tap
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const FindStoreScreen()),
                      );
                    },
                    label: const Text(
                      'Find a store',
                      style: TextStyle(color: Colors.grey),
                    ),
                    style: ButtonStyle(
                      iconSize: MaterialStateProperty.all(15),

                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.transparent),
                      elevation: MaterialStateProperty.all<double>(
                          0.0), // Remove the button elevation
                    ),
                    icon: const Icon(
                      CupertinoIcons.chevron_down,
                      color: Colors.grey,
                    ),
                  ),
                  const ImageIcon(
                      // Your custom icon here
                      AssetImage(
                          'assets/images/shop-window.png') // Set the size of your custom icon
                      ),
                ]))),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {
            // Handle search icon tap
          },
        ),
        IconButton(
          icon: const Icon(Icons.chat),
          onPressed: () {
            // Handle chat icon tap
          },
        ),
        IconButton(
          icon: const Icon(Icons.person_2_outlined),
          onPressed: () {
            // Handle profile icon tap
          },
        ),
      ],
    );
  }
}
