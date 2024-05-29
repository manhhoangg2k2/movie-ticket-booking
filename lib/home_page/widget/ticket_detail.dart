import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TicketDetail extends StatelessWidget {
  const TicketDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      color: Colors.white,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius:
                    BorderRadius.circular(10.0), // Đặt bán kính bo tròn
                child: Image.asset(
                  'lib/apps/assets/image/avenger.jpg',
                  cacheHeight:
                      (MediaQuery.of(context).size.height * 0.22).toInt(),
                  fit: BoxFit.cover, // Đặt cách thức hình ảnh hiển thị
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(18),
                  height: (MediaQuery.of(context).size.height * 0.2),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Avengers: Endgame",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.movie_creation_outlined,
                            color: Colors.black,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Action, adventure",
                            style: TextStyle(color: Colors.black),
                            maxLines: null,
                            overflow: TextOverflow.fade,
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.watch_later_outlined,
                            color: Colors.black,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "2 hours 20 min",
                            style: TextStyle(color: Colors.black),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.watch_later_outlined,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "05.02.2024  15:00",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.calendar_month,
                    size: 35,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("14h15'"),
                      Text("10.02.2024"),
                    ],
                  )
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.chair_rounded,
                    size: 35,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Section 4"),
                      Text("Seat H7, H8"),
                    ],
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Divider(
            color: Colors.black, // Màu sắc của dòng kẻ
            thickness: 1.0, // Độ dày của dòng kẻ
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            children: [
              Row(
                children: [
                  Icon(Icons.attach_money_outlined),
                  Text(
                    "210.000 VND",
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(Icons.location_pin),
                  Text("BGV Vincom Center Park")
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(Icons.note),
                  Text(
                      "Show this QR code to the ticket counter to receive your ticket")
                ],
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          DottedLine(
            direction: Axis.horizontal,
            lineLength: double.infinity,
            lineThickness: 2.0,
            dashLength: 4.0,
            dashColor: Colors.black,
            dashGapLength: 4.0,
          ),
        ],
      ),
    );
  }
}
