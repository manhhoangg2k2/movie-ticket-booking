import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_box/home_page/widget/common_widget.dart';
import 'package:ticket_box/home_page/widget/movie_slice.dart';
import 'package:ticket_box/movie_page/movie_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> _pathImg = [
    "lib/apps/assets/image/avenger.jpg",
    "lib/apps/assets/image/exhuma.jpg",
    "lib/apps/assets/image/kingfupanda.jpg",
  ];
  CarouselController buttonCarouselController = CarouselController();
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                // ListView.separated(
                //     itemBuilder: (context, index) {},
                //     separatorBuilder: (context, index) => SizedBox(
                //           height: 20,
                //         ),
                //     itemCount: 1),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hi, Manh Hoang",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          "Welcome back",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )
                      ],
                    ),
                    Icon(
                      Icons.notifications,
                      color: Colors.white,
                      size: 30,
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: const Color.fromARGB(
                              255, 207, 207, 207), // Màu border khi focus
                        ),
                      ),
                      labelStyle: TextStyle(color: Colors.grey),
                      labelText: 'Search',
                      fillColor: Color.fromARGB(
                          255, 26, 24, 24), // Đặt màu nền là màu xám nhạt
                      filled: true,
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.white,
                      )),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Now playing",
                            style: TextStyle(
                                fontSize: 26,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Text(
                                "See all",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.amber.shade300),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.amber.shade300,
                                size: 14,
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      CarouselSlider(
                        items: [
                          Image.network(
                            _pathImg[0],
                            fit: BoxFit.fill,
                          )
                        ],
                        carouselController: buttonCarouselController,
                        options: CarouselOptions(
                          autoPlay: true,
                          enlargeCenterPage: true,
                          viewportFraction: 0.9,
                          aspectRatio: 2.0,
                          initialPage: 2,
                        ),
                      ),
                      // MovieSlice(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Avengers-End Game",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "2h29m • Action, adventure, sci-fi",
                            style: TextStyle(color: Colors.white54),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.amber.shade300,
                              ),
                              Text(
                                "4.8",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "(1.222)",
                                style: TextStyle(color: Colors.white54),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
                // CommonWidget(label: "Now playing", item: MovieSlice())
              ],
            ),
          ),
        ));
  }
}
