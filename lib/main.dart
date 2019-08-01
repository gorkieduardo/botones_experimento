import 'package:flutter/material.dart';
import 'package:botones_experimento/src/pages/botones_pages.dart';
import 'package:flutter/services.dart';




void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle( SystemUiOverlayStyle.light.copyWith(
     statusBarColor: Colors.transparent
    ));


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseños',
      initialRoute: 'basico',
      routes: {
        'basico'  : (BuildContext context ) => BotonesPage(),
        
      },
    );
  }

}