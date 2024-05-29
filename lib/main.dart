import 'package:flutter/material.dart';
import 'package:ticket_box/home_page/booking_page/movie_detail.dart';
import 'package:ticket_box/home_page/booking_page/payment_page.dart';
import 'package:ticket_box/home_page/booking_page/seat_picking_page.dart';
import 'package:ticket_box/home_page/widget/ticket_detail.dart';
// import 'package:material_text_fields/theme/material_text_field_theme.dart';
import 'package:ticket_box/main_page.dart';
import 'package:ticket_box/stared_page/sign_in.dart';
import 'package:ticket_box/stared_page/sign_up.dart';
import 'package:ticket_box/stared_page/started_page.dart';
import 'package:ticket_box/test.dart';
import 'package:ticket_box/ticket_page/ticket_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: SignInPage(),
    );
  }
}
