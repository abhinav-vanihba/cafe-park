import 'package:cafe_park/src/validation_success_screen/validation_success_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class FindStoreScreen extends StatefulWidget {
  const FindStoreScreen({super.key});

  @override
  State<FindStoreScreen> createState() => _FindStoreScreenState();
}

class _FindStoreScreenState extends State<FindStoreScreen> {
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
                    Divider(
                      color: Colors.grey,
                      thickness: 3,
                      indent: MediaQuery.of(context).size.width / 3,
                      endIndent: MediaQuery.of(context).size.width / 3,
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
                    Center(
                      child: SizedBox(
                        height: 50.0, // Set the desired height
                        width: 200.0, // Set the desired width
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
