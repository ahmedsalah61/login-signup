// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class signup extends StatelessWidget {
  const signup({super.key});

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
                      height: 15,
                    ),
                    Text(
                      "signup",
                      style: TextStyle(fontSize: 28, fontFamily: ("myfont")),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    SvgPicture.asset(
                      "assets/icons/signup.svg",
                      width: 170,
                    ),
                    SizedBox(
                      height: 15,
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
                              labelText: " username :",
                              //  hintStyle: TextStyle(fontSize: 15),
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
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("already have an account?"),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, '/login');
                              },
                              child: Text(
                                "signin",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 250,
                          child: Row(
                            children: [
                              Expanded(
                                  child: Divider(
                                height: 9,
                                thickness: 1,
                                color: Colors.purple,
                              )),
                              Text(
                                "or",
                                style: TextStyle(fontSize: 20),
                              ),
                              Expanded(
                                  child: Divider(
                                height: 9,
                                thickness: 1,
                                color: Colors.purple,
                              )),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 27),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                padding: EdgeInsets.all(11),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: Colors.purple, width: 1)),
                                child: SvgPicture.asset(
                                  "assets/icons/facebook.svg",
                                  color: Colors.purple,
                                ),
                                height: 50,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Container(
                                padding: EdgeInsets.all(11),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: Colors.purple, width: 1)),
                                child: SvgPicture.asset(
                                  "assets/icons/icons8-x.svg",
                                  color: Colors.purple,
                                ),
                                height: 50,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Container(
                                padding: EdgeInsets.all(11),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: Colors.purple, width: 1)),
                                child: SvgPicture.asset(
                                  "assets/icons/icons8-instagram.svg",
                                  color: Colors.purple,
                                ),
                                height: 50,
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Positioned(
                child: Image.asset(
                  "assets/images/signup_top.png",
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
