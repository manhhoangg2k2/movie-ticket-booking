import 'package:flutter/cupertino.dart';

class CommonWidget extends StatefulWidget {
  String? label;
  Widget? item;
  CommonWidget({super.key, label, item});

  @override
  State<CommonWidget> createState() => _CommonWidgetState();
}

class _CommonWidgetState extends State<CommonWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Text(widget.label.toString()), widget.item!],
    );
  }
}
