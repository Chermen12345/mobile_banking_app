import 'package:flutter/material.dart';

class MyIcon extends StatefulWidget {
  String icon_path;
  MyIcon({super.key,required this.icon_path});

  @override
  State<MyIcon> createState() => _IconState();
}

class _IconState extends State<MyIcon> {
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(23.0),
      child: Container(
          width: 30,
          height: 30,
          child: Center(child: Image(image: AssetImage(widget.icon_path),)),
        ),
    );
  }
}