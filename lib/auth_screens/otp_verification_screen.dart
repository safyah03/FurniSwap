import 'package:flutter/material.dart';

class OtpVerificationScreen extends StatelessWidget {
  final String email;
  final TextEditingController otpController = TextEditingController();

  OtpVerificationScreen({super.key, required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F2EB),
      appBar: AppBar(
        backgroundColor: const Color(0xffF5F2EB),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Verify OTP",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color(0xff4A3419),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              "Enter the 6-digit code sent to",
              style: TextStyle(fontSize: 16, color: Color(0xff8B7355)),
            ),
            Text(
              email,
              style: TextStyle(
                fontSize: 16,
                color: Color(0xff4A3419),
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            TextFormField(
              controller: otpController,
              keyboardType: TextInputType.number,
              maxLength: 6,
              decoration: InputDecoration(
                hintText: "Enter OTP",
                filled: true,
                fillColor: Colors.white,
                counterText: "",
                prefixIcon: const Icon(Icons.security),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: Color(0xffE8E0D5)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: Color(0xffE8E0D5)),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final otp = otpController.text.trim();
                if (otp.length != 6) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                        content: Text("Please enter a valid 6-digit OTP")),
                  );
                  return;
                }

                print("Verifying OTP $otp for $email");
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff694A38),
                minimumSize: const Size(double.infinity, 48),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text(
                "Verify",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
