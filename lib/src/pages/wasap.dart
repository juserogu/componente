import 'package:flutter/material.dart';

class WasaPage extends StatefulWidget {
  const WasaPage({Key key}) : super(key: key);

  @override
  _WasaPageState createState() => _WasaPageState();
}

class _WasaPageState extends State<WasaPage> {
  
  String _nombre;
  List _poderes = ['volar', 'asdasd', 'wer', 'rtyui'];
String _opcionSeleccionada= 'volar';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       appBar: AppBar(
         title: Text('inputs de texto'),
         
       ),
       body: ListView(
          padding: EdgeInsets.symmetric(horizontal:10.0, vertical:20.0),
         children: <Widget>[
          
           
           Divider(),
           _crearDropdown(),
         ],
       ) 
    );
  }




  

List<DropdownMenuItem<String>> getOpcionesDropdown(){
  List<DropdownMenuItem<String>> lista = new List ();
  _poderes.forEach((poder){
    lista.add(DropdownMenuItem(
      child: Text(poder),
      value: poder,
      ));

  });
return lista;


}


  _crearDropdown() {

    return DropdownButton(
      items: getOpcionesDropdown (),
      value: _opcionSeleccionada,
      onChanged: (opt){
        setState(() {
          _opcionSeleccionada= opt;
        });
        
      }
      
      );
  }
  
}