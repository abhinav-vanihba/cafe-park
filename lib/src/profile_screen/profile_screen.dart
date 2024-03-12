import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize:
            Size.fromHeight(70.0), // Adjust the preferred height as needed
        child: CustomAppBar(),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          const Divider(
            height: 1,
            color: Color(0xffE8E8E8),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              children: [
                const Image(image: AssetImage('assets/images/user_image.png')),
                const SizedBox(
                  width: 10,
                ),
                const Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Hello, ",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                        Text(
                          "Ankur",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    Text(
                      "+91 8543****45 ",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffA6A6A6)),
                    ),
                  ],
                ),
                const Spacer(
                  flex: 1,
                ),
                Container(
                    width: 59,
                    height: 33,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFAFAFA), // Background color
                      border: Border.all(width: 1, color: Colors.grey),
                      borderRadius:
                          BorderRadius.circular(16.5), // Rounded border radius)
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(image: AssetImage('assets/images/coin.png')),
                        Text(
                          "66",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffA6A6A6)),
                        ),
                      ],
                    ))
              ],
            ),
          ),
          const Divider(
            height: 1,
            color: Color(0xffE8E8E8),
          ),
          Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 20),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 0,
                        blurRadius: 32,
                        offset: const Offset(0, -4),
                      ),
                    ],
                  ),
                  child: // Your card content
                      Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      const Image(
                          image: AssetImage('assets/images/star-big.png')),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              const Column(
                                children: [
                                  Text(
                                    "LEVEL 1",
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Partner",
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 80,
                              ),
                              Container(
                                  width: 104,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: const Color(
                                        0xFFFAFAFA), // Background color
                                    border: Border.all(
                                        width: 1, color: Colors.grey),
                                    borderRadius: BorderRadius.circular(
                                        16.5), // Rounded border radius)
                                  ),
                                  child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "MY BENEFITS",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xffA6A6A6)),
                                      ),
                                    ],
                                  ))
                            ],
                          ),
                          const Text(
                            "You’re practically family and we couldn’t",
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                          const Text(
                            "be happier to have you on board",
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                  width: 329,
                  height: 32,
                  decoration: BoxDecoration(
                    color: const Color(0xFFEBF2EF), // Background color
                    borderRadius:
                        BorderRadius.circular(16.5), // Rounded border radius)
                  ),
                  child: const Row(
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "0/15",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffA6A6A6)),
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      Text(
                        "INFLUENCER",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffA6A6A6)),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                    ],
                  )),
              const SizedBox(
                  width: 329,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Just 15 purchase within 85 days before",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffA6A6A6)),
                      ),
                      Text(
                        "you become a Loyalty Cafe",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffA6A6A6)),
                      ),
                    ],
                  )),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: const Image(
                  image: AssetImage('assets/images/banner.png'),
                  height: 150, // Set the desired height
                  fit: BoxFit.cover, // Adjust the BoxFit property as needed
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: const Image(
                  image: AssetImage('assets/images/banner-2.png'),
                  height: 165, // Set the desired height
                  fit: BoxFit.cover, // Adjust the BoxFit property as needed
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: const Image(
                  image: AssetImage('assets/images/banner.png'),
                  height: 150, // Set the desired height
                  fit: BoxFit.cover, // Adjust the BoxFit property as needed
                ),
              ),
            ],
          ),
        ],
      )),
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
      centerTitle: true,
      title: const Text(
        'Profile',
        style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 20,
        ),
      ),
      actions: [
        IconButton(
          icon: const ImageIcon(AssetImage('assets/images/Notification.png')),
          onPressed: () {
            // Handle search icon tap
          },
        ),
        IconButton(
          icon: const ImageIcon(AssetImage('assets/images/gear.png')),
          onPressed: () {
            // Handle chat icon tap
          },
        ),
      ],
    );
  }
}
