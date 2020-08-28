import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('alert page')
      ),
      body: Center(
        child:RaisedButton(
        child: Text('vgjhbjk'),
        color: Colors.blueAccent,
        textColor: Colors.white,
        onPressed:()=>_mostrarAlert(context),
        )
      ),
       floatingActionButton: FloatingActionButton(
        child: Icon(Icons.ac_unit) ,     
        onPressed: (){
         Navigator.pop(context);
        }),  
    );
  }
  void _mostrarAlert(BuildContext context){
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context){
         return AlertDialog(
          shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          title: Text('fgj'),        
          content: Column( 
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('cvbnm'),
            FlutterLogo(size: 100.0)
           ],
          ),
          actions: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [              
            FlatButton(
              onPressed: ()=> Navigator.of(context).pop(),
              child: Text('dfghg')),
               FlatButton(
              onPressed: ()=>Navigator.of(context).pop(), 
              child: Text('dfghg'))
               ] )   
          ],
       );
      },  
        useRootNavigator: true,      
    );
  }
}