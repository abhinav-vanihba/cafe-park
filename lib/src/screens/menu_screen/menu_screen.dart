import 'package:cafe_park/src/model/CoffeeItemModel.dart';
import 'package:cafe_park/src/provider/cart_provider.dart';
import 'package:cafe_park/src/provider/coffee_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MenuScreen extends ConsumerWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final coffeeItems = ref.watch(fetchCoffeeListProvider);
    final cart = ref.watch(cartProvider);
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize:
              Size.fromHeight(70.0), // Adjust the preferred height as needed
          child: CustomAppBar(),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              const Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Nearest pickup- 4.7km away",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFA6A6A6),
                        fontSize: 14),
                  ),
                ],
              ),
              const Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Chandigarh sector 35",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF307A59),
                        fontSize: 18),
                  ),
                  Icon(
                    CupertinoIcons.chevron_down,
                    color: Color(0xFF307A59),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 20),
                margin: const EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFFAFAFA), // Background color
                    border: Border.all(width: 1, color: Colors.grey),
                    borderRadius:
                        BorderRadius.circular(8.0), // Rounded border radius
                  ),
                  child: TextField(
                    decoration: const InputDecoration(
                      hintText: 'Search Your Menus',
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                      border: InputBorder.none, // Remove default border
                    ),
                    onChanged: (value) {
                      // Handle search input
                    },
                  ),
                ),
              ),
              SizedBox(
                  height: 328,
                  width: MediaQuery.of(context).size.width,
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: const BoxDecoration(
                      color: Color(0xFFEBF2EF), // Background color
                    ),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "New Launched",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          switch (coffeeItems) {
                            AsyncData(:final value) => SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    for (CoffeeItemModel item in value)
                                      if (item.isNewLaunched)
                                        Row(
                                          children: [
                                            CustomCoffeeItem(data: item),
                                            const SizedBox(
                                              width: 20,
                                            ),
                                          ],
                                        ),
                                  ],
                                )),
                            AsyncError() =>
                              const Text('Oops, something unexpected happened'),
                            _ => const CircularProgressIndicator(),
                          },
                        ]),
                  )),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  switch (coffeeItems) {
                    AsyncData(:final value) => Text(
                        "Recommended (${value.where((element) => !element.isNewLaunched).length})",
                        style: const TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 18),
                      ),
                    AsyncError() => const Text('Loading..'),
                    _ => const CircularProgressIndicator(),
                  },
                ],
              )
            ],
          ),
        ));
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
        'Menu',
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
      ],
    );
  }
}

class CustomCoffeeItem extends ConsumerWidget {
  final CoffeeItemModel data;

  const CustomCoffeeItem({super.key, required this.data});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
        height: 250,
        width: 250,
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage(
                  "assets/images/coffee-background.png"), // Replace with your image path
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(8.0), // Background color
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Image(
              image: AssetImage("assets/images/new-tag.png"),
            ),
            const Spacer(
              flex: 1,
            ),
            SizedBox(
                height: 100,
                width: 230,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(8.0), // Background color
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data.itemName,
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          data.itemCategory,
                          style: const TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                              fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Text(
                              data.itemPrice,
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w400),
                            ),
                            const Spacer(
                              flex: 1,
                            ),
                            TextButton(
                              onPressed: () {
                                // Add your onTap logic here
                                ref.read(cartProvider.notifier).addItem(data);
                              },
                              style: ButtonStyle(
                                padding: MaterialStateProperty.all<
                                    EdgeInsetsGeometry>(
                                  const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 2),
                                ),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                  Theme.of(context).primaryColor,
                                ),
                                shape:
                                    MaterialStateProperty.all<OutlinedBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                ),
                              ),
                              child: const Text(
                                "Order Now",
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            )
                          ],
                        )
                      ]),
                )),
          ]),
        ));
  }
}
