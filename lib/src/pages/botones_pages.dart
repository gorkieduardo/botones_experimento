import 'dart:math';

import 'dart:ui';


import 'package:flutter/material.dart';

class BotonesPage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Stack(
       children: <Widget>[
         _fondoApp(),
         SingleChildScrollView(
           child: Column(
             children: <Widget>[
               _titulos(),
               _botones()
             ],
           ),
         )
       ],
     ),
     bottomNavigationBar: _bottomNavigationBar(context)
    
    );
  }

  Widget _fondoApp() {

  final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(00, 0.6),
          end: FractionalOffset(0.0, 1),
          colors: [
            Colors.redAccent,
            Colors.blue,
          ]
        )
      ),
    );

    final cajaroRosa = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
          height: 350,
          width: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(80.0),
            gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(60, 173, 197, 1.0),
                    Color.fromRGBO(249, 247, 85, 1.0)
            ]
          )
        ),
      )
    );
    
    
 final img = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(

    height: 320,
    width: 280,
      decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(80.0),
      
    ),
    child: Image(
          image: AssetImage('assets/gueguense.jpg'),
          width: 160,
            ),
  
      
      )
    );
       

      return Stack(
        
        children: <Widget>[
          gradiente,
          Positioned(
            top: -50,
            child: cajaroRosa
            ),
          Positioned(
            top: -50,
            child: img)

        ],
    );
  
  }

  Widget _titulos(){

      return SafeArea(

          child: Container(
            padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height:100),
              Text('Las Picardías del Güegüense', 
              style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height:18),
              Text('Eduardo Estrada Montenegro', 
              style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold)),
            ],),
        ),
      );

  }

  Widget _bottomNavigationBar(BuildContext context){

    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Color.fromRGBO(75, 179,  187, 1),
        primaryColor: Colors.brown,
        textTheme: Theme.of(context).textTheme
        .copyWith( caption: TextStyle(color: Color.fromRGBO(116, 117, 152, 1.0)))


      ),
    child: BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
         icon: Icon( Icons.home, size: 30.0 ),
         title: Container() 
          ), 
          BottomNavigationBarItem(
         icon: Icon( Icons.school, size: 30.0 ),
         title: Container() 
          ), 
          BottomNavigationBarItem(
         icon: Icon( Icons.album, size: 30.0 ),
         title: Container() 
          ), 

      ],
    ),
    );
  }

  Widget _botones(){

      return Table(
        children: [
          TableRow(
            children: [
             _crearboton( Colors.blue, Icons.bookmark, 'Introducción'),
             _crearboton(  Colors.blue, Icons.book, 'Narración'),
            
            ]
          ),
           TableRow(
            children: [
             _crearboton( Colors.blue, Icons.data_usage, 'Datos Históricos'),
             _crearboton( Colors.blue, Icons.picture_in_picture, 'Autor'),
            ]
          ),
           TableRow(
            children: [
              _crearboton( Colors.blue, Icons.image_aspect_ratio, 'Galería'),
              _crearboton( Colors.blue, Icons.info_outline, 'Representación'),
            ]
          ),
           TableRow(
            children: [
              _crearboton(Colors.blue, Icons.camera, 'Video'),
              _crearboton(Colors.blue, Icons.music_note, 'Música'),
            ]
          )
        ],
      );
  }
 Widget _crearboton( Color color, IconData icono, String texto ) {
 
 
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur( sigmaX: 10.0, sigmaY: 10.0 ),
        child: Container(
          height: 180.0,
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: Color.fromRGBO(62, 66, 107, 0.7),
            borderRadius: BorderRadius.circular(20.0)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              SizedBox( height: 5.0 ),
              CircleAvatar(
                backgroundColor: color,
                radius: 35.0,
                child: Icon( icono, color: Colors.white, size: 30.0 ),
              ),
              Text( texto , style: TextStyle( color: color )),
              SizedBox( height: 5.0 )
              
            ],
          ),
 
        ),
      ),
    );
  }}