import 'package:flutter/material.dart';
import 'package:the_flutter_app/models/Product.dart';

import 'package:the_flutter_app/constants.dart';

class Description extends StatelessWidget {
  const Description() : super();


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: paddingDefault),
      child: Text(
        "email: belleristic@gmail.com",
        style: TextStyle(height: 1.5),
      ),
    );
  }
}