import 'package:cafe_park/src/find_a_store_screen/find_a_store_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreenWidget extends StatefulWidget {
  const HomeScreenWidget({super.key});

  @override
  State<HomeScreenWidget> createState() => _HomeScreenWidgetState();
}

class _HomeScreenWidgetState extends State<HomeScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    const Image(image: AssetImage('assets/images/coin.png')),
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
                    const Image(image: AssetImage('assets/images/Wallet.png')),
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
                      Image(
                          image:
                              AssetImage('assets/images/colored_wallet.png')),
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
                      Image(image: AssetImage('assets/images/star.png')),
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
          CustomGridRow(data: [
            CustomGridRowData(
              text: "Beverages",
              image: 'assets/images/beverage.png',
            ),
            CustomGridRowData(
              text: "Food",
              image: 'assets/images/food.png',
            ),
            CustomGridRowData(
              text: "Meal Combo",
              image: 'assets/images/meal.png',
            ),
          ]),
          CustomGridRow(data: [
            CustomGridRowData(
              text: "Coffee",
              image: 'assets/images/coffee.png',
            ),
            CustomGridRowData(
              text: "Quick Bites",
              image: 'assets/images/quick_bite.png',
            ),
            CustomGridRowData(
              text: "Merchandise",
              image: 'assets/images/merchandise.png',
            ),
          ]),
        ],
      )),
    );
  }
}

class CustomGridRow extends StatelessWidget {
  final List<CustomGridRowData> data;

  const CustomGridRow({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          for (int i = 0; i < data.length; i++)
            Expanded(
              child: Column(
                children: [
                  Image(image: AssetImage(data[i].image)),
                  Text(data[i].text),
                ],
              ),
            ),
        ],
      ),
    );
  }
}

class CustomGridRowData {
  final String text;
  final String image;

  CustomGridRowData({required this.text, required this.image});
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
      title: Align(
        alignment: Alignment.centerLeft,
        child: Row(
          children: [
            const ImageIcon(
              AssetImage('assets/images/shop-window.png'),
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: ElevatedButton.icon(
                onPressed: () {
                  // Handle Find a store button tap
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FindStoreScreen(),
                    ),
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
            )
          ],
        ),
      ),

      actions: [
        IconButton(
          icon: const ImageIcon(AssetImage('assets/images/search.png')),
          onPressed: () {
            // Handle search icon tap
          },
        ),
        IconButton(
          icon: const ImageIcon(AssetImage('assets/images/chat4.png')),
          onPressed: () {
            // Handle chat icon tap
          },
        ),
        IconButton(
          icon: const ImageIcon(AssetImage('assets/images/person-circle.png')),
          onPressed: () {
            // Handle profile icon tap
          },
        ),
      ],
    );
  }
}
