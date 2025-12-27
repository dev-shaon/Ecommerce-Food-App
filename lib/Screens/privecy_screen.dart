import 'package:flutter/material.dart';

class PrivecyScreen extends StatelessWidget {
  PrivecyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(12),
              child: Align(
                alignment: Alignment.topLeft,
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back_ios, color: Colors.black),
                  label: Text("Go back", style: TextStyle(color: Colors.black)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    elevation: 0,
                  ),
                ),
              ),
            ),

            SizedBox(height: 20),
            Text(
              "Notification",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 40),

            //Container for List
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: SingleChildScrollView(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Privacy Policy",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),

                      Text(
                        "Your privacy is important to us. This policy explains how we collect, use, and protect your personal information when you use our application.",
                        style: TextStyle(fontSize: 15),
                      ),
                      SizedBox(height: 20),

                      Text(
                        "Information We Collect",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "- Name\n- Email address\n- Phone number\n- Delivery address\n- Device and usage information",
                        style: TextStyle(fontSize: 15),
                      ),
                      SizedBox(height: 20),

                      Text(
                        "How We Use Your Information",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "- To process and deliver orders\n- To provide customer support\n- To improve user experience\n- To send order updates",
                        style: TextStyle(fontSize: 15),
                      ),
                      SizedBox(height: 20),

                      Text(
                        "Payment Security",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "We do not store any payment information. All transactions are processed securely through trusted payment gateways.",
                        style: TextStyle(fontSize: 15),
                      ),
                      SizedBox(height: 20),

                      Text(
                        "Data Protection",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "We use appropriate security measures to protect your personal data from unauthorized access.",
                        style: TextStyle(fontSize: 15),
                      ),
                      SizedBox(height: 20),

                      Text(
                        "Policy Updates",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "We may update this Privacy Policy from time to time. Any changes will be reflected within the app.",
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
