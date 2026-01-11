import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fruits_ecommerce_app/Screens/Authentication.dart';
import 'package:fruits_ecommerce_app/Screens/othentication/login_screen.dart';

class SignUp extends StatefulWidget {
   SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Create Account",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                      color: Colors.deepOrange,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 44),
              Text(
                "Sign up",
                style: TextStyle(
                  color: Colors.deepOrange,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
              SizedBox(height: 20),
              Text("Your Username", style: TextStyle(color: Colors.deepOrange)),
              TextField(
                obscureText: true, 
                decoration: InputDecoration(
                  hintText: "Enter your Username",

                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:  BorderSide(
                      color: Colors.orange, 
                      width: 1.5,
                    ),
                  ),

                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:  BorderSide(
                      color: Colors.deepOrange, 
                      width: 2,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text("Your Email", style: TextStyle(color: Colors.deepOrange)),
              TextField(
                obscureText: true, 
                decoration: InputDecoration(
                  hintText: "Enter your email",

                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:  BorderSide(
                      color: Colors.orange, 
                      width: 1.5,
                    ),
                  ),

                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:  BorderSide(
                      color: Colors.deepOrange, 
                      width: 2,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text("Password", style: TextStyle(color: Colors.deepOrange)),
              TextField(
                obscureText: true, 
                decoration: InputDecoration(
                  hintText: "Enter your password",

                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:  BorderSide(
                      color: Colors.orange, 
                      width: 1.5,
                    ),
                  ),

                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:  BorderSide(
                      color: Colors.deepOrange, 
                      width: 2,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 60),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(300, 50),
                    backgroundColor: Colors.orange,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Authentication()),
                    );
                  },
                  child: Text(
                    "Sign Up",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Already a user?"),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => SignIn()),
                      );
                    },
                    child: Text(
                      "Log In",
                      style: TextStyle(
                        color: Colors.deepOrangeAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      color: Colors.grey,
                      endIndent: 10,
                    ),
                  ),
                  Text(
                    'OR',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      color: Colors.grey,
                      indent: 10,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: FaIcon(
                      FontAwesomeIcons.facebook,
                      color: Colors.orange,
                      size: 36,
                    ),
                    onPressed: () {
                      print("Gamepad Pressed");
                    },
                  ),
                  IconButton(
                    icon: FaIcon(
                      FontAwesomeIcons.squareInstagram,
                      color: Colors.deepOrange,
                      size: 36,
                    ),
                    onPressed: () {
                      print("Instagram Pressed");
                    },
                  ),
                  IconButton(
                    icon: FaIcon(
                      FontAwesomeIcons.squareTwitter,
                      color: Colors.orange,
                      size: 36,
                    ),
                    onPressed: () {
                      print("Twitter Pressed");
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
