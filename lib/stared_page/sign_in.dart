import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ticket_box/home_page/home_page.dart';
import 'package:ticket_box/stared_page/sign_up.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool _passWordVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Sign in",
          style: TextStyle(
              color: Colors.white, fontSize: 26, fontWeight: FontWeight.w500),
        ),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                "lib/apps/assets/image/logo.jpg",
                cacheWidth: 200,
              ),
              Column(
                children: [
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: 'Username',
                          labelStyle: TextStyle(
                              color: Color.fromARGB(255, 131, 131, 131)),
                          prefixIcon: Icon(
                            Icons.account_circle_sharp,
                            color: Colors.white,
                          )),
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: TextField(
                      obscureText: _passWordVisible,
                      decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(
                              color: Color.fromARGB(255, 131, 131, 131)),
                          prefixIcon: Icon(
                            Icons.key,
                            color: Colors.white,
                          ),
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  _passWordVisible = !_passWordVisible;
                                });
                              },
                              icon: Icon(Icons.remove_red_eye_rounded))),
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Forgot Password?",
                        style: TextStyle(color: Colors.amber),
                      ),
                      InkWell(
                          onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignUpPage()),
                              ),
                          child: Text(
                            "Sign up",
                            style: TextStyle(color: Colors.amber),
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    width: double.infinity,
                    decoration: BoxDecoration(),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.amber.shade400),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: Text(
                          "Sign in",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      ),
                    ),
                  )
                ],
              ),
              // Column(
              //   children: [
              //     Text(
              //       "Or",
              //       style: TextStyle(color: Colors.white, fontSize: 18),
              //     ),
              //     SizedBox(
              //       height: 30,
              //     ),
              //     Container(
              //       margin: EdgeInsets.symmetric(horizontal: 20),
              //       width: double.infinity,
              //       child: ElevatedButton(
              //           style: ButtonStyle(
              //             backgroundColor: MaterialStatePropertyAll(
              //                 Color.fromARGB(255, 19, 18, 18)),
              //           ),
              //           child: Container(
              //             padding: const EdgeInsets.symmetric(vertical: 12),
              //             child: Row(
              //               mainAxisAlignment: MainAxisAlignment.center,
              //               children: [
              //                 Icon(
              //                   Icons.facebook_outlined,
              //                   color: Color.fromARGB(255, 19, 102, 211),
              //                 ),
              //                 SizedBox(
              //                   width: 10,
              //                 ),
              //                 Text(
              //                   "Facebook",
              //                   style: TextStyle(
              //                       color: Colors.white, fontSize: 16),
              //                 ),
              //               ],
              //             ),
              //           ),
              //           onPressed: () {}),
              //     ),
              //     SizedBox(
              //       height: 20,
              //     ),
              //     Container(
              //       margin: EdgeInsets.symmetric(horizontal: 20),
              //       width: double.infinity,
              //       child: ElevatedButton(
              //           style: ButtonStyle(
              //             backgroundColor: MaterialStatePropertyAll(
              //                 Color.fromARGB(255, 19, 18, 18)),
              //           ),
              //           child: Container(
              //             padding: const EdgeInsets.symmetric(vertical: 12),
              //             child: Row(
              //               mainAxisAlignment: MainAxisAlignment.center,
              //               children: [
              //                 SvgPicture.asset(
              //                   'lib/apps/assets/image/google-icon-logo-svgrepo-com.svg',
              //                   height: 18,
              //                 ),
              //                 SizedBox(
              //                   width: 10,
              //                 ),
              //                 Text(
              //                   "Google",
              //                   style: TextStyle(
              //                       color: Colors.white, fontSize: 16),
              //                 ),
              //               ],
              //             ),
              //           ),
              //           onPressed: () {}),
              //     ),
              //     SizedBox(
              //       height: 10,
              //     ),
              //     // Align(
              //     //   child: Column(
              //     //     children: [
              //     //       Text(
              //     //         "By sign in or sign up, you agree to our Terms of Service",
              //     //         style: TextStyle(color: Colors.grey.shade700),
              //     //       ),
              //     //       Text("and Privacy Policy",
              //     //           style: TextStyle(color: Colors.grey.shade700)),
              //     //     ],
              //     //   ),
              //     // )
              //   ],
              // )
            ],
          ),
        ),
      ),
    );
  }
}
