import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('card page')
      ),  
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height:30.0),
          _cardTipo2()
        ]
      ),
    );
  }
 Widget _cardTipo1() {
   return Card(
     elevation: 10.0,
     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
     child: Column(
       children: <Widget>[
         ListTile(
           leading: Icon(Icons.access_alarms, color: Colors.black,),
           title: Text('Invitacion a daros de hostias'),
           subtitle: Text('Estas invitado a una fiesta donde seras la piñata, no faltes :D '),
         ),
         Row(
           mainAxisAlignment: MainAxisAlignment.end,
           children: [         
            FlatButton(onPressed: (){

            },
            child: Text('Cancelar')),
            FlatButton(onPressed: (){

            }, 
            child: Text('Aceptar e ir'))
           ]
         )
       ],
     )
   ); 
 }
 
 
 Widget _cardTipo2(){
  
  final card= Container(
    color: Colors.white,
    child:
          Column(
    children:[
        FadeInImage(
          
          image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/9/95/Big_Pine_landscape.jpg'),
          placeholder: AssetImage('assets/original.gif'),
          fadeInDuration: Duration(milliseconds: 50),
          height: 300.0,
          fit: BoxFit.cover,
          
        ),
        Container(
         padding: EdgeInsets.all(10.0),
         child: Text('dfg'),
        )
    ]
    )
  );
  return Container(
    
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30.0),
      boxShadow: <BoxShadow> [
        BoxShadow(
        color: Colors.black26,
        blurRadius: 10.0,
        spreadRadius: 2.0,
        offset: Offset(2.0, 10.0)

        )
      ]
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(30.0),
      child: card,
    )
  );

 }   

 }

 
