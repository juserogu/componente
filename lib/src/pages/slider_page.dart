import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  SliderPage({Key key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}


class _SliderPageState extends State<SliderPage> {

 double  _valorSlider= 100.0;
 bool _bloquearCheck= false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider')
        ),
      body:Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column (
          children: <Widget>[
            _crearSlider(),
            _checkBox(),
            Expanded(child:_creaImage()),
          ],

        )

      ) 


    );
   
  }

  Widget _crearSlider(){
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'tamaño imagen',
     value: _valorSlider,
      min: 10.0,
      max: 400.0,
      onChanged:(_bloquearCheck) ?null:(valor){
        
        setState(() {
          _valorSlider=valor;
          
        });

      },);

  }

  Widget _checkBox (){
    return Checkbox(
      value: _bloquearCheck, 
      onChanged: (valor){
        setState(() {
       _bloquearCheck= valor;
        }); 
      });
  }

  _creaImage() {
    return Image(
      image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/0/09/TheCheethcat.jpg'),
      width: _valorSlider,
      fit: BoxFit.contain,
      );
  }
}