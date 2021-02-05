import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:the_flutter_app/constants.dart';
import 'package:the_flutter_app/models/Product.dart';
import 'package:the_flutter_app/screens/details/details_screen.dart';
import 'package:the_flutter_app/screens/profile/components/description.dart';
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
                   height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Description(),
                      SizedBox(
                      height: 200,
                      width: 400,
                      child: GoogleMap(initialCameraPosition: CameraPosition(
                          target: LatLng(46.2587, 20.14222), zoom: 16)),
                      ),

                      SizedBox(height: paddingDefault, width: 100,),
                    ],
                  ),
                ),
                ProfileNameWithImage(),
              ],
            ),
          )
        ],
      ),
    );
  }
}