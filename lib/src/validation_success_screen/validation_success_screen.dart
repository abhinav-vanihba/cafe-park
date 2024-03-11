import 'package:flutter/material.dart';

class ValidationSuccessScreen extends StatefulWidget {
  const ValidationSuccessScreen({super.key});

  @override
  State<ValidationSuccessScreen> createState() => _ValidationSuccessState();
}

class _ValidationSuccessState extends State<ValidationSuccessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.8,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Image(
                image: AssetImage('assets/images/validation_success.png')),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Congratulation!",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "your account is complete, please enjoy the best menu from us.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w300,
                color: Colors.grey,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50.0, // Set the desired height
              width: 200.0, // Set the desired width
              child: MaterialButton(
                color: Theme.of(context).primaryColor,
                textColor: Colors.white,
                onPressed: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      8.0), // Set the desired border radius
                ),
                child: const Text('Get Started'),
              ),
            )
          ],
        ),
      )),
    );
  }
}
