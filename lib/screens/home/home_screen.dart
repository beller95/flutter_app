import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:the_flutter_app/constants.dart';
import 'package:the_flutter_app/screens/home/components/body.dart';
import 'package:the_flutter_app/screens/profile/profile.dart';
import 'package:the_flutter_app/screens/cart/cart.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/profile.svg",
            // By default our  icon color is white
            color: colorPrimary,
          ),
          onPressed: () => Navigator.push(
            context,
              MaterialPageRoute(
              builder: (context) => Profile()
                ),
            ),
        ),
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/cart.svg",
            // By default our  icon color is white
            color: colorPrimary,
          ),
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Cart()
            ),
          ),
        ),
        SizedBox(width: paddingDefault / 2)
      ],
    );
  }
}