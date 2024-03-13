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

    int totalItemCount = cart.length;
    int totalPrice = 0;

    // Calculate total price
    for (CoffeeItemModel item in cart) {
      totalPrice += item.itemPrice;
    }

    return Scaffold(
        appBar: const PreferredSize(
          preferredSize:
              Size.fromHeight(70.0), // Adjust the preferred height as needed
          child: CustomAppBar(),
        ),
        body: Column(
          children: [
            Expanded(
                child: SingleChildScrollView(
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
                                AsyncData(:final value) =>
                                  SingleChildScrollView(
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
                                AsyncError() => const Text(
                                    'Oops, something unexpected happened'),
                                _ => const CircularProgressIndicator(),
                              },
                            ]),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  switch (coffeeItems) {
                    AsyncData(:final value) => Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const SizedBox(
                                width: 20,
                              ),
                              Text(
                                "Recommended (${value.length})",
                                style: const TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 18),
                              ),
                            ],
                          ),
                          for (int i = 0; i < value.length; i += 2)
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: CustomGridItem(item: value[i]),
                                ),
                                const SizedBox(
                                    width: 16.0), // Adjust spacing as needed
                                if (i + 1 < value.length)
                                  Expanded(
                                    child: CustomGridItem(item: value[i + 1]),
                                  ),
                              ],
                            ),
                        ],
                      ),
                    AsyncError() => const Text('Loading..'),
                    _ => const CircularProgressIndicator(),
                  },
                ],
              ),
            )),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8))),
              height: 65, // Adjust the height as needed
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '$totalItemCount items ₹$totalPrice',
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 12),
                    ),
                    const Text(
                      'Extra Charges May Apply',
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                          fontSize: 12),
                    ),
                  ],
                ),
                const Spacer(
                  flex: 1,
                ),
                TextButton(
                    onPressed: () {
                      // Add your onTap logic here
                    },
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                      ),
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.white,
                      ),
                      shape: MaterialStateProperty.all<OutlinedBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                    child: Row(
                      children: [
                        Text(
                          "View Cart",
                          style: TextStyle(
                            fontSize: 12,
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Icon(
                          CupertinoIcons.chevron_right,
                          color: Color(0xFF307A59),
                          size: 12,
                        ),
                      ],
                    ))
              ]),
            ),
          ],
        ));
  }
}

class CustomGridItem extends ConsumerWidget {
  final CoffeeItemModel item;

  const CustomGridItem({super.key, required this.item});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool isInCart = ref.read(cartProvider.notifier).isItemInCart(item);

    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(clipBehavior: Clip.none, children: [
            SizedBox(
              width: 158.0,
              height: 158.0,
              child:
                  // Image
                  ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: const Image(
                  image: AssetImage("assets/images/coffee-background.png"),
                  width: 158.0,
                  height: 158.0,
                  fit: BoxFit.cover,
                ),
              ), // Add button
            ),
            Positioned(
              bottom: -20,
              right: 10,
              child: isInCart
                  ? _buildCartButtons(context, ref, item)
                  : Material(
                      elevation: 1.0,
                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                      child: TextButton(
                        onPressed: () {
                          ref.read(cartProvider.notifier).addItem(item);
                        },
                        style: ButtonStyle(
                          overlayColor:
                              MaterialStateProperty.all(Colors.transparent),
                          padding:
                              MaterialStateProperty.all<EdgeInsetsGeometry>(
                            const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 15),
                          ),
                          backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.white,
                          ),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Add",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF121212),
                                ),
                              ),
                              Text(
                                "Customization",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFFA6A6A6),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
            )
          ]),

          Container(
            margin: const EdgeInsets.only(top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    item.itemName,
                    style: const TextStyle(
                        fontSize: 16.0, fontWeight: FontWeight.w500),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                // Item Price
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                  child: Text(
                    '₹${item.itemPrice.toStringAsFixed(2)}',
                    style: const TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF307A59)),
                  ),
                ),
              ],
            ),
          ) // Item Name
        ],
      ),
    );
  }

  Widget _buildCartButtons(
      BuildContext context, WidgetRef ref, CoffeeItemModel item) {
    int itemCount = ref.read(cartProvider.notifier).getItemCount(item);

    return Container(
      decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: const BorderRadius.all(Radius.circular(8))),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            onPressed: () {
              ref.read(cartProvider.notifier).removeItem(item);
            },
            icon: const Icon(
              Icons.remove_circle,
              color: Colors.white,
            ),
          ),
          Text(
            itemCount.toString(),
            style: const TextStyle(fontSize: 16.0, color: Colors.white),
          ),
          IconButton(
            onPressed: () {
              ref.read(cartProvider.notifier).addItem(item);
            },
            icon: const Icon(
              Icons.add_circle,
              color: Colors.white,
            ),
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
                              "₹${data.itemPrice}",
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
