import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(50.0), // Adjust the preferred height as needed
        child: CustomAppBar(),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Row(
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
          SizedBox(
            height: 20,
          ),
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
      centerTitle: true,
      title: const Text(
        'Profile',
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
