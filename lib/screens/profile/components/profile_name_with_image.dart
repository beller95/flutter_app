import 'package:flutter/material.dart';


import 'package:the_flutter_app/constants.dart';

class ProfileNameWithImage extends StatelessWidget {
  const ProfileNameWithImage({
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
            "Hi",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            "Norbert",
            //profile.name,
            style: Theme.of(context)
                .textTheme
                .headline4
                .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: paddingDefault),
          Row(
            children: <Widget>[
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(text: "Age\n"),
                    TextSpan(
                      text: "25",
                      //text: "\$${profile.email}",
                      style: Theme.of(context).textTheme.headline4.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(width: paddingDefault),
              Expanded(
                child: Hero(
                  tag: "profile",
                  child: Image.asset(
                    "assets/images/profile_sample.png",
                    //product.image,
                    height: 200,
                    fit: BoxFit.contain,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}