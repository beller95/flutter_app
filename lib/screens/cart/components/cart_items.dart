import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:the_flutter_app/constants.dart';
import 'package:the_flutter_app/constants.dart';

class CartItems extends StatelessWidget {
  const CartItems() : super();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 10,
      ),
      child: DottedBorder(
        customPath: (size) {
          return Path()
            ..moveTo(0, 0)
            ..lineTo(size.width, 0);
        },
        color: Colors.grey[500],
        dashPattern: [6, 4],
        child: Container(
          padding: EdgeInsets.only(
            top: 10,
          ),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  "Total",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                "1549",
                style: TextStyle(
                  fontSize: 20,
                  color: colorPrimary,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}