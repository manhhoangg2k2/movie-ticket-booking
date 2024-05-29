import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_box/home_page/booking_page/payment_page.dart';
import 'package:ticket_box/models/seat_data.dart';

class SeatPicking extends StatefulWidget {
  const SeatPicking({super.key});

  @override
  State<SeatPicking> createState() => _SeatPickingState();
}

class _SeatPickingState extends State<SeatPicking> {
  List<Seat> seats = [];
  @override
  void initState() {
    super.initState();

    // Khởi tạo danh sách chỗ ngồi
    for (int row = 1; row <= 10; row++) {
      for (int col = 1; col <= 13; col++) {
        String seatId = '${String.fromCharCode(65 + row - 1)}${col.toString()}';
        Seat seat = Seat(
          id: seatId,
          status: SeatStatus.available,
        );
        seats.add(seat);
      }
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          'Seat Picking',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Column(
              children: [
                Container(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    height: 5, // Chiều cao của đường thẳng
                    width: double
                        .infinity, // Chiều rộng của đường thẳng (chiếm toàn bộ chiều ngang)
                    color: Color(0xfffcc434) // Màu của đường thẳng
                    ),
                Container(
                  height: 50, // Chiều cao của gradient
                  width: double
                      .infinity, // Chiều rộng của gradient (chiếm toàn bộ chiều ngang)
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xff604a14).withOpacity(
                            1.0), // Màu vàng với opacity 1.0 (đầy đủ)
                        Colors.black, // Màu vàng với opacity 0.0 (trong suốt)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 20.0,
                      height: 20.0,
                      decoration: BoxDecoration(
                          color: Color(0xff1c1c1c),
                          borderRadius: BorderRadius.circular(5)
                          // border: Border.all(color: Colors.black),
                          ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Available',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: 20.0,
                      height: 20.0,
                      decoration: BoxDecoration(
                          color: Colors.amber.shade100,
                          borderRadius: BorderRadius.circular(5)
                          // border: Border.all(color: Colors.black),
                          ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Reserved',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: 20.0,
                      height: 20.0,
                      decoration: BoxDecoration(
                          color: Colors.amber.shade400,
                          borderRadius: BorderRadius.circular(5)
                          // border: Border.all(color: Colors.black),
                          ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Selected',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    )
                  ],
                ),
                // SeatStatusWidget(
                //   status: SeatStatus.reserved,
                //   text: 'Reserved',
                // ),
                // SeatStatusWidget(
                //   status: SeatStatus.selected,
                //   text: 'Selected',
                // ),
              ],
            ),
          ),

          SizedBox(
            height: 10,
          ),
          // Hiển thị danh sách hàng ghế
          Expanded(
            child: GridView.count(
              padding: EdgeInsets.all(1),
              crossAxisCount: 13,
              crossAxisSpacing: 3, // Khoảng cách ngang giữa các ô
              mainAxisSpacing: 3, // Khoảng cách dọc giữa các ô
              children: seats.map((seat) {
                return SeatWidget(
                  seat: seat,
                  onTap: () {
                    setState(() {
                      if (seat.status == SeatStatus.available) {
                        seat.status = SeatStatus.selected;
                      } else if (seat.status == SeatStatus.selected) {
                        seat.status = SeatStatus.available;
                      }
                    });
                  },
                );
              }).toList(),
            ),
          ),
          SizedBox(
            height: 20,
          ),

          Container(
            padding: EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Total",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "210.000 VND",
                      style: TextStyle(
                          color: Colors.amber.shade400,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.amber.shade400)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PaymentPage()),
                      );
                    },
                    child: Text(
                      "Buy Ticket",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}

// Widget hiển thị chỗ ngồi
class SeatWidget extends StatelessWidget {
  final Seat seat;
  final VoidCallback onTap;

  SeatWidget({required this.seat, required this.onTap});

  @override
  Widget build(BuildContext context) {
    Color color;
    switch (seat.status) {
      case SeatStatus.available:
        color = Color(0xff1c1c1c);
        break;
      case SeatStatus.reserved:
        color = Colors.amber.shade100;
        break;
      case SeatStatus.selected:
        color = Colors.amber.shade400;
        break;
    }

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 40.0,
        height: 40.0,
        decoration:
            BoxDecoration(color: color, borderRadius: BorderRadius.circular(5)
                // border: Border.all(color: Colors.black),
                ),
        child: Center(
          child: Text(
            seat.id,
            style: TextStyle(
                fontSize: 10,
                color: seat.status == SeatStatus.selected
                    ? Colors.black
                    : Colors.white),
          ),
        ),
      ),
    );
  }
}
