import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:the_flutter_app/constants.dart';
import 'package:the_flutter_app/screens/cart/components/cart_items.dart';
import 'package:the_flutter_app/screens/cart/components/cart_title.dart';
import 'package:the_flutter_app/screens/cart/components/checkout.dart';
import 'package:the_flutter_app/screens/profile/components/profile_name_with_image.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: paddingDefault,
                    right: paddingDefault,
                  ),
                  // height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      CartItems(),
                      Checkout(),
                      SizedBox(height: paddingDefault / 2),
                    ],
                  ),
                ),
              CartTitle(),
              ],
            ),
          )
        ],
      ),
    );
  }
}