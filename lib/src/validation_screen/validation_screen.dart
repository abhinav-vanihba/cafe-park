import 'package:cafe_park/src/validation_success_screen/validation_success_screen.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class ValidationScreen extends StatefulWidget {
  const ValidationScreen({super.key, required this.phoneNumber});
  final String phoneNumber;
  @override
  State<ValidationScreen> createState() => _ValidationScreenState();
}

class _ValidationScreenState extends State<ValidationScreen> {
  String enteredOTP = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
            child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.8,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Verification Phone",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Please enter the code we just sent to phone",
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "number ",
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                  Text(
                    widget.phoneNumber,
                    style: const TextStyle(fontSize: 13),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              PinCodeTextField(
                appContext: context,
                length: 4,
                onChanged: (value) {
                  setState(() {
                    enteredOTP = value;
                  });
                },
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                  fieldHeight: 52,
                  fieldWidth: 52,
                  activeColor: Theme.of(context).primaryColor,
                  inactiveColor: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "If you didn’t receive a code? ",
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                  Text(
                    "Resend",
                    style: TextStyle(fontSize: 13),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 48.0, // Set the desired height
                width: 327.0, // Set the desired width
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
