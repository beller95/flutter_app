import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:the_flutter_app/constants.dart';
import 'package:the_flutter_app/screens/cart/components/body.dart';
import 'package:the_flutter_app/screens/cart/components/checkout.dart';

class Cart extends StatelessWidget {

  const Cart({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // each product have a color
      backgroundColor: colorThird,
      appBar: buildAppBar(context),
      body: Body(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: colorThird,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          'assets/icons/back.svg',
          color: Colors.white,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset("assets/icons/profile.svg", color: Colors.white,),
          onPressed: () {},
        ),
        IconButton(
          icon: SvgPicture.asset("assets/icons/cart.svg", color: Colors.white,),
          onPressed: () {},
        ),
        SizedBox(width: paddingDefault / 2)
      ],
    );
  }
}