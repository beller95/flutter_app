import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:the_flutter_app/constants.dart';

class Checkout extends StatelessWidget {
  const Checkout() : super();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: paddingDefault),
      child: Row(
        children: <Widget>[
          Expanded(
            child: SizedBox(
              height: 50,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18)),
                color: colorSecondary,
                onPressed: () {},
                child: Text(
                  "Checkout".toUpperCase(),
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}