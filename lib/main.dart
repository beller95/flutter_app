import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:the_flutter_app/constants.dart';
import 'package:the_flutter_app/screens/home/home_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  // Elérhető kamerák listája
  //final cameras = await availableCameras();

  // Kivesszük a legelső kamerát a listából
  //final camera = cameras.length > 0 ? cameras.first : null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ShopME',
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(bodyColor: colorPrimary),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}