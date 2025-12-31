import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/Screens/Delivery_Status_scren.dart';
import 'package:fruits_ecommerce_app/Screens/Home_Screen.dart';

class OderComplete extends StatelessWidget {
  const OderComplete({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 100),
            Center(
              child: AvatarGlow(
                    glowRadiusFactor: 0.3,
                    animate: true,
                    repeat: true,
                    glowColor: Colors.green,
                    child: Material(
                      elevation: 8.0,
                      shape:  CircleBorder(),
                      child: CircleAvatar(
                        backgroundColor: Colors.grey[100],
                        radius: 80,
                        child: Image(image: AssetImage("assets/images/confirom.png"))
                      ),
                    ),
                  ),
            ),
            SizedBox(height: 56),
            Image(image: AssetImage("assets/images/Congratulations!!!.png")),
            SizedBox(height: 16),
            Image(image: AssetImage("assets/images/text.png")),
            SizedBox(height: 56),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                minimumSize: Size(200, 70),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DeliveryStatusScren(),
                  ),
                );
              },
              child: Text(
                "Track order",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
            SizedBox(height: 46),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: 80,
                width: 250,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.amber, width: 2),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    "Continue shopping",
                    style: TextStyle(
                      color: Colors.amber,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
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
