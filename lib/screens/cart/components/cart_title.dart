import 'package:flutter/material.dart';
import 'package:the_flutter_app/constants.dart';

class CartTitle extends StatelessWidget {
  const CartTitle({
    Key key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: paddingDefault),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Cart",
            //profile.name,
            style: Theme.of(context)
                .textTheme
                .headline4
                .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: paddingDefault),
          Row(
            children: <Widget>[
              SizedBox(width: paddingDefault)
            ]
          )
        ],
      ),
    );
  }
}