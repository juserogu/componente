import 'dart:async';

import 'package:flutter/material.dart';

class ListaPage extends StatefulWidget {
  ListaPage({Key key}) : super(key: key);

  @override
  _ListaPageState createState() => _ListaPageState();
}

ScrollController _scrollController = new ScrollController();
List<int>_listaMela = new List() ;
int _ultimoItem= 0 ;
bool _isLoading = false;



class _ListaPageState extends State<ListaPage> {
  @override
  
void initState() { 
  super.initState();
  _agregar10();
  _scrollController.addListener((){
    if (_scrollController.position.pixels==_scrollController.position.maxScrollExtent)
   
    fetchData();
    {
      
    }
  });
}
@override
  void dispose() {
    
    super.dispose();
    _scrollController.dispose();
  }

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('listas')
      ),
      body:  Stack(
        children: <Widget>[
          _crearListas(),
          _crearLoading()
          
        ],
      )    
      
      );
    
  }

  Widget _crearListas(){

    return RefreshIndicator(
       onRefresh: (){},
    child: ListView.builder(
      controller: _scrollController,
      
    itemCount: _listaMela.length,
    
     itemBuilder: (BuildContext context, int index ){
       
       final imagen = _listaMela[index];
       return FadeInImage(
        placeholder: AssetImage('assets/original.gif'), 
        image: NetworkImage('https://i.picsum.photos/id/$imagen/500/300.jpg')
       );
     }     
     )
    );
  }

Future<Null> obtenerPagina1()async {
  final duration = new Duration (seconds:2);
  new Timer(duration,(){
    _ultimoItem++;
    _agregar10();

  });

}
  
  void _agregar10(){

for (var i = 1; i < 10; i++) {
  _ultimoItem++;
  _listaMela.add(_ultimoItem);
}
setState(() {
  
});
  }
Future fetchData() async{
 _isLoading= true;
setState(() {
  
});
final duration = new Duration (seconds: 2);
new Timer( duration, respuestaHTTP);

}
void respuestaHTTP(){
  _isLoading=false;
  _agregar10();
}

  _crearLoading() {
    if (_isLoading){
      return Center(
      child:Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
         CircularProgressIndicator(),
         SizedBox(height: 15.0,)
        ],)
      );
      
      
       
    }else{
      return Container();
    }
  } 




}