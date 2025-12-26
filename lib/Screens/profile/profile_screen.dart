import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/Wigets/profile_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text(
          "Your Profile",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(height: 40),

              Center(
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.orange,
                        blurRadius: 12,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Stack(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage(
                          "assets/images/profile.png",
                        ),
                        backgroundColor: Colors.deepOrange,
                      ),

                      // Positioned Edit Button
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            color: Colors.deepOrange,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.filter,
                            color: Colors.white,
                            size: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 20),

              Text(
                "SHAON DAS",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),

              Text(
                "shaondas22@gmail.com",
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),

              SizedBox(height: 30),

              ProfileItem(
                title: "Change Username",
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => ChangeeU  sername()),
                  // );
                },
              ),
              ProfileItem(
                title: "Change Password",
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => ChangePass()),
                  // );
                },
              ),

              SizedBox(height: 30),

              SizedBox(
                width: 170,
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.deepOrange,
                    padding: EdgeInsets.symmetric(vertical: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => SignIn()),
                    // );
                  },
                  label: Text(
                    "Logout",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  icon: Icon(Icons.logout),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
