import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';
import 'package:ticket_box/stared_page/sign_in.dart';
import 'package:ticket_box/stared_page/sign_up.dart';

int selectedIndex = 0;

class StartedPage extends StatefulWidget {
  const StartedPage({super.key});

  @override
  State<StartedPage> createState() => _StartedPageState();
}

class _StartedPageState extends State<StartedPage> {
  CarouselController buttonCarouselController = CarouselController();

  List<String> _languageList = ['English', 'Vietnamese'];

  String _selectedLanguage = '';

  List<String> _pathImg = [
    "lib/apps/assets/image/avenger.jpg",
    "lib/apps/assets/image/exhuma.jpg",
    "lib/apps/assets/image/kingfupanda.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "lib/apps/assets/image/logo.jpg",
                    cacheWidth: 100,
                  ),
                  InkWell(
                    onTap: () => showModalBottomSheet<void>(
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                            height: 200,
                            color: Color(0xF2f2f2),
                            child: Center(
                              child: Column(
                                children: [
                                  Expanded(
                                    child: ListView.builder(
                                      itemCount: 2,
                                      itemBuilder: (context, index) {
                                        return InkWell(
                                          onTap: () {
                                            setState(() {
                                              selectedIndex = index;
                                            });
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: selectedIndex == index
                                                  ? const Color.fromARGB(
                                                      255, 223, 223, 223)
                                                  : Colors.white,
                                            ),
                                            padding: EdgeInsets.all(10),
                                            child: Row(
                                              children: [
                                                Icon(
                                                    Icons
                                                        .account_balance_wallet_outlined,
                                                    color: Colors.purple),
                                                SizedBox(width: 10),
                                                Expanded(
                                                  child: Container(
                                                    padding: EdgeInsets.all(5),
                                                    decoration: BoxDecoration(
                                                      border: Border(
                                                          bottom: BorderSide(
                                                              color: Color
                                                                  .fromRGBO(
                                                                      228,
                                                                      228,
                                                                      228,
                                                                      1))),
                                                    ),
                                                    child: Text(
                                                        _languageList[index]),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  // Positioned(
                                  //     child: Container(
                                  //         padding: EdgeInsets.all(10),
                                  //         width: double.infinity,
                                  //         height: 70,
                                  //         child: ElevatedButton(
                                  //           onPressed: () {
                                  //             _selectedLanguage =
                                  //                 OrderController.getPayById(
                                  //                     (selectedIndex + 1)
                                  //                         .toString());
                                  //             context.goNamed("order");
                                  //           },
                                  //           child: Text("Confirm"),
                                  //         )))
                                ],
                              ),
                            ),
                          );
                        }),
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(color: Colors.white)),
                      child: Row(
                        children: [
                          Icon(
                            Icons.translate,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "English",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 380,
                    width: 280,
                    child: CarouselSlider(
                      items: [
                        Image.network(
                          _pathImg[selectedIndex],
                          fit: BoxFit.fill,
                        )
                      ],
                      carouselController: buttonCarouselController,
                      options: CarouselOptions(
                        onPageChanged: (index, reason) {
                          print(index);

                          setState(() {
                            selectedIndex = index;
                          });
                        },
                        autoPlay: true,
                        enlargeCenterPage: true,
                        viewportFraction: 0.9,
                        aspectRatio: 2.0,
                        initialPage: 2,
                      ),
                    ),
                  ),
                  // Swiper(
                  //   itemBuilder: (context, index) {
                  //     return Image.network(
                  //       _pathImg[index],
                  //       fit: BoxFit.fill,
                  //     );
                  //   },
                  //   itemCount: 2,
                  //   viewportFraction: 0.8,
                  //   scale: 0.9,
                  // )
                  // ),
                  SizedBox(
                    height: 20,
                  ),
                  // Image.asset(
                  //   "lib/apps/assets/image/avenger.jpg",
                  //   cacheHeight:
                  //       (MediaQuery.of(context).size.height * 0.4).toInt(),
                  // ),
                  Text(
                    "Glass Moon Media",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Enjoy your favorite move",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Expanded(
                      child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.amber),
                            padding: MaterialStateProperty.all<EdgeInsets>(
                              EdgeInsets.all(
                                  20.0), // Thay đổi giá trị padding ở đây
                            ),
                          ),
                          onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignInPage()),
                              ),
                          child: Text(
                            "Sign in",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ButtonStyle(
                          side: MaterialStatePropertyAll(
                              BorderSide(color: Colors.white)),
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.black),
                          padding: MaterialStateProperty.all<EdgeInsets>(
                            EdgeInsets.all(
                                20), // Thay đổi giá trị padding ở đây
                          ),
                        ),
                        onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignUpPage()),
                            ),
                        child: Text(
                          "Sign up",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        "By sign in or sign up, you agree to our Terms of Service and Privacy Policy",
                        style: TextStyle(
                            color: const Color.fromARGB(255, 179, 179, 179),
                            fontSize: 12),
                        overflow: TextOverflow.visible,
                        textAlign: TextAlign.center,
                      ),
                    ),
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
