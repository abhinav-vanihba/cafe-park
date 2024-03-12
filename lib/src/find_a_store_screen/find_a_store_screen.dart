import 'package:cafe_park/src/validation_success_screen/validation_success_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class FindStoreScreen extends StatefulWidget {
  const FindStoreScreen({super.key});

  @override
  State<FindStoreScreen> createState() => _FindStoreScreenState();
}

class _FindStoreScreenState extends State<FindStoreScreen> {
  List<String> notes = [
    "fluttermaster.com",
    "Update Android Studio to 3.3",
    "Implement ListView widget",
    "Demo ListView simplenote app",
    "Fixing app color",
    "Create new note screen",
    "Persist notes data",
    "Add screen transition animation",
    "Something long Something long Something long Something long Something long Something long",
  ];
  var selectedIndex = 'Chandigarh1';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Colors.black, //change your color here
          ),
          title: const Text("Find a store"),
        ),
        body: Stack(children: [
          Center(
              child: SizedBox(
            child: Column(
              children: [
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
                        hintText: 'Find a store to pickup',
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
                Container(
                    height: 200.0, // Adjust the height of the map container
                    color: Colors.red,
                    width: MediaQuery.of(context).size.width,
                    child: GoogleMap(
                      initialCameraPosition: const CameraPosition(
                        target: LatLng(-33.86, 151.20),
                        zoom: 11.0,
                      ),
                      markers: {
                        const Marker(
                          markerId: MarkerId('Sydney'),
                          position: LatLng(-33.86, 151.20),
                        )
                      },
                    )),
              ],
            ),
          )),
          Positioned(
            top: 260.0, // Adjust the top value to move the bottom container up
            child: Container(
              // margin: const EdgeInsets.only(top: 20),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(32),
                      topRight: Radius.circular(32))),
              width: MediaQuery.of(context).size.width,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 2,
                    ),
                    const Divider(
                      color: Color(0xffE8E8E8),
                      thickness: 3,
                      indent: 175,
                      endIndent: 175,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Near by cafe",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Chandigarh sector 35",
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 30),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 5),
                      decoration: selectedIndex == 'Chandigarh1'
                          ? BoxDecoration(
                              color: const Color(0xffEBF2EF),
                              border: Border.all(
                                  width: 1,
                                  color: Theme.of(context).primaryColor),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(12)))
                          : const BoxDecoration(
                              color: Color(0xffFAFAFA),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12))),
                      child: Row(
                        children: [
                          const Image(
                              image: AssetImage('assets/images/coffee.png')),
                          const SizedBox(
                            width: 20,
                          ),
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Chandigarh sector 35",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Open until 12:45 am   4.7 km away",
                                style:
                                    TextStyle(fontSize: 12, color: Colors.grey),
                              )
                            ],
                          ),
                          const Spacer(
                            flex: 1,
                          ),
                          Radio(
                              value: selectedIndex,
                              groupValue: "Chandigarh1",
                              onChanged: (String? value) {
                                setState(() {
                                  selectedIndex = 'Chandigarh1';
                                });
                              },
                              fillColor:
                                  MaterialStateProperty.resolveWith<Color>(
                                      (Set<MaterialState> states) {
                                if (states.contains(MaterialState.disabled)) {
                                  return Theme.of(context).primaryColor;
                                }
                                return Theme.of(context).primaryColor;
                              })),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 30),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 5),
                      decoration: selectedIndex == 'Chandigarh2'
                          ? BoxDecoration(
                              color: const Color(0xffEBF2EF),
                              border: Border.all(
                                  width: 1,
                                  color: Theme.of(context).primaryColor),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(12)))
                          : const BoxDecoration(
                              color: Color(0xffFAFAFA),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12))),
                      child: Row(
                        children: [
                          const Image(
                              image: AssetImage('assets/images/coffee.png')),
                          const SizedBox(
                            width: 20,
                          ),
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Chandigarh sector 35",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Open until 12:45 am   4.7 km away",
                                style:
                                    TextStyle(fontSize: 12, color: Colors.grey),
                              )
                            ],
                          ),
                          const Spacer(
                            flex: 1,
                          ),
                          Radio(
                              value: selectedIndex,
                              groupValue: "Chandigarh2",
                              onChanged: (String? value) {
                                setState(() {
                                  selectedIndex = 'Chandigarh2';
                                });
                              },
                              fillColor:
                                  MaterialStateProperty.resolveWith<Color>(
                                      (Set<MaterialState> states) {
                                if (states.contains(MaterialState.disabled)) {
                                  return Theme.of(context).primaryColor;
                                }
                                return Theme.of(context).primaryColor;
                              })),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 30),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 5),
                      decoration: selectedIndex == 'Chandigarh3'
                          ? BoxDecoration(
                              color: const Color(0xffEBF2EF),
                              border: Border.all(
                                  width: 1,
                                  color: Theme.of(context).primaryColor),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(12)))
                          : const BoxDecoration(
                              color: Color(0xffFAFAFA),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12))),
                      child: Row(
                        children: [
                          const Image(
                              image: AssetImage('assets/images/coffee.png')),
                          const SizedBox(
                            width: 20,
                          ),
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Chandigarh sector 35",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Open until 12:45 am   4.7 km away",
                                style:
                                    TextStyle(fontSize: 12, color: Colors.grey),
                              )
                            ],
                          ),
                          const Spacer(
                            flex: 1,
                          ),
                          Radio(
                              value: selectedIndex,
                              groupValue: "Chandigarh3",
                              onChanged: (String? value) {
                                setState(() {
                                  selectedIndex = 'Chandigarh3';
                                });
                              },
                              fillColor:
                                  MaterialStateProperty.resolveWith<Color>(
                                      (Set<MaterialState> states) {
                                if (states.contains(MaterialState.disabled)) {
                                  return Theme.of(context).primaryColor;
                                }
                                return Theme.of(context).primaryColor;
                              })),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: SizedBox(
                        height: 48.0, // Set the desired height
                        width: 370.0, // Set the desired width
                        child: MaterialButton(
                          color: Theme.of(context).primaryColor,
                          textColor: Colors.white,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const ValidationSuccessScreen()),
                            );
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                8.0), // Set the desired border radius
                          ),
                          child: const Text('Pickup from here'),
                        ),
                      ),
                    )
                  ]),
            ),
          )
        ]));
  }
}
