import 'package:cafe_park/src/screens/validation_screen/validation_screen.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final items = [
    Image.asset('assets/images/carousel_image_1.png'),
    Image.asset('assets/images/carousel_image_2.png')
  ];

  int currentIndex = 0;
  String phoneNumber = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Image(
              image: AssetImage('assets/images/onboardingHeader.png'))),
      body: SingleChildScrollView(
        child: Center(
            child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.8,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  height: 300,
                  initialPage: 0,
                  padEnds: true,
                  pageSnapping: false,
                  enableInfiniteScroll: false,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                ),
                items: items,
              ),
              const Text(
                "All Your",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const Text(
                "favorites foods",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "Order your favorite menu with easy,",
                style: TextStyle(fontSize: 10, color: Colors.grey),
              ),
              const Text(
                " on-demand delivery",
                style: TextStyle(fontSize: 10, color: Colors.grey),
              ),
              const SizedBox(
                height: 20,
              ),
              IntlPhoneField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(),
                  ),
                ),
                initialCountryCode: 'IN',
                onChanged: (phone) {
                  setState(() {
                    phoneNumber = phone.completeNumber;
                  });
                },
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 56.0, // Set the desired height
                width: 327.0, // Set the desired width
                child: MaterialButton(
                  color: Theme.of(context).primaryColor,
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              ValidationScreen(phoneNumber: phoneNumber)),
                    );
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        8.0), // Set the desired border radius
                  ),
                  child: const Text('Continue'),
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
