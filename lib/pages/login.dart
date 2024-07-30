// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "login",
                      style: TextStyle(fontSize: 28, fontFamily: ("myfont")),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SvgPicture.asset(
                      "assets/icons/login.svg",
                      width: 250,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 10),
                          height: 55,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.purple[100],
                          ),
                          margin: EdgeInsets.only(left: 35, right: 35),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: " your email :",
                              hintStyle: TextStyle(fontSize: 15),
                              icon: Icon(Icons.person),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 10),
                          height: 55,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.purple[100],
                          ),
                          margin: EdgeInsets.only(left: 35, right: 35),
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: " Password :",
                              hintStyle: TextStyle(
                                fontSize: 15,
                              ),
                              icon: Icon(Icons.lock),
                              suffixIcon: Icon(Icons.remove_red_eye),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          width: 335,
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              "login",
                              style: TextStyle(fontSize: 25),
                            ),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  const Color.fromARGB(255, 145, 3, 171)),
                              foregroundColor:
                                  MaterialStateProperty.all(Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("don't have an account?"),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, '/signup');
                              },
                              child: Text(
                                "signup",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              Positioned(
                child: Image.asset(
                  "assets/images/main_top.png",
                  width: 111,
                ),
                left: 0,
              ),
              Positioned(
                child: Image.asset(
                  "assets/images/login_bottom.png",
                  width: 111,
                ),
                bottom: 0,
                right: 0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
