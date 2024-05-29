import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_box/home_page/widget/ticket_detail.dart';

class TicketPage extends StatefulWidget {
  const TicketPage({super.key});

  @override
  State<TicketPage> createState() => _TicketPageState();
}

class _TicketPageState extends State<TicketPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: TicketDetail(),
      ),
    );
  }
}
