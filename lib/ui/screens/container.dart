import 'package:flutter/material.dart';
import 'package:task/core/constant/colors.dart';
import 'package:task/core/constant/text_style.dart';

// ignore: must_be_immutable
class MyContainer extends StatelessWidget {
  String? text;
  Color? boxColor;
  Color? textColor;
  double? borderRadius;
  String? imageUrl;

  MyContainer({
    super.key,
    this.text,
    this.boxColor,
    this.textColor,
    this.borderRadius,
    this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      height: 132,
      width: 165,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(imageUrl ?? ""),
          fit: BoxFit.cover,
        ),
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: blueColor, width: 2),
      ),
      child: Text(
        text ?? "",
        style: style18.copyWith(color: textColor ?? redColor),
      ),
    );
  }
}
