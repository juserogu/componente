
import 'dart:collection';

import 'package:flutter/material.dart';

class HomePageTemp   extends StatelessWidget {
  

final Opciones = ['uno','dos','tres','cuatro'];

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(      
      appBar: AppBar(
        centerTitle: true,
        title: Text('fgf')
      ),      
      body: ListView(      
      children: _crearItemsCorta()
      ), 

    );    
  }
   List<Widget> _crearItemsCorta(){

    return Opciones.map((item){

      return Column(
        
        children: <Widget>[          
          ListTile(
            onTap: (){},
            trailing:Icon(Icons.add_circle),
            leading: Icon(Icons.adb),
            title:Text (item)
                        
          ),
          Divider()
        ],
      );



    }).toList();


  }
} 