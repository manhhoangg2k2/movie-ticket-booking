import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ticket_box/home_page/booking_page/ticket_page.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  int _currentChoose = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          'Payment',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: BoxDecoration(
          color: Colors.black,
        ),
        child: Column(
          children: [
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(50)),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('lib/apps/assets/image/avenger.jpg',
                      cacheHeight:
                          (MediaQuery.of(context).size.height * 0.22).toInt()),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(18),
                      height: (MediaQuery.of(context).size.height * 0.2),
                      color: Color(0xff1c1c1c),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Avengers: Endgame",
                            style: TextStyle(
                                color: Colors.amber.shade300,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.movie_creation_outlined,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Action, adventure, sci-fi",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Vincom Ocean Park BGV",
                                style: TextStyle(color: Colors.white),
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
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Order ID",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      Text(
                        "100101001",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Seat",
                          style: TextStyle(color: Colors.white, fontSize: 16)),
                      Text("H7, H8",
                          style: TextStyle(color: Colors.white, fontSize: 16))
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 50,
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            style: TextStyle(
                              color:
                                  Colors.white, // Đặt màu chữ thành màu trắng
                            ),
                            // enabled: false,
                            decoration: InputDecoration(
                                prefixStyle: TextStyle(color: Colors.white),
                                // enabled: false,
                                border: OutlineInputBorder(),
                                labelText: "coupon"),
                          ),
                        ),
                        ElevatedButton(
                          style: ButtonStyle(
                            minimumSize:
                                MaterialStateProperty.all(Size(50.0, 54.0)),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(5.0), // Bo góc
                              ),
                            ),
                            backgroundColor: MaterialStateProperty.all(
                                Colors.amber.shade400),
                          ),
                          onPressed: () {},
                          child: Text(
                            "Apply",
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Text(
                        "189.000 VND",
                        style: TextStyle(
                            color: Colors.amber.shade400,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Payment Method",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
                child: ListView.separated(
                    itemBuilder: (context, index) => InkWell(
                          onTap: () {
                            setState(() {
                              _currentChoose = index;
                            });
                          },
                          child: _currentChoose == index
                              ? Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 10),
                                  decoration: BoxDecoration(
                                      color: Color(0xff261d08),
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                          color: Colors.amber.shade300)),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.money,
                                        size: 35,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        width: 30,
                                      ),
                                      Text(
                                        "Cash",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      )
                                    ],
                                  ),
                                )
                              : Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 10),
                                  decoration: BoxDecoration(
                                      color: Color(0xff1c1c1c),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.money,
                                        size: 35,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        width: 30,
                                      ),
                                      Text(
                                        "Cash",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      )
                                    ],
                                  ),
                                ),
                        ),
                    separatorBuilder: (context, index) => SizedBox(
                          height: 10,
                        ),
                    itemCount: 3)),
            SizedBox(
              height: 10,
            ),
            Container(
              // margin: EdgeInsets.symmetric(horizontal: 20),
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
                      "Continue",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TicketPage()),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
