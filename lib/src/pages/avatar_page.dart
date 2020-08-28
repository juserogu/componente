import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  const Avatar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text('avatar page'),
        actions: <Widget>[
          CircleAvatar(
            
            backgroundColor: Colors.red,
            radius: 40.0,
            backgroundImage: NetworkImage('https://actioncoach.com.mx/mariainesmoran/wp-content/uploads/sites/3/2016/08/LEON-SERIO-.jpg'),
            
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(              
              backgroundColor: Colors.red,
              radius: 100.0,
              backgroundImage: NetworkImage('https://actioncoach.com.mx/mariainesmoran/wp-content/uploads/sites/3/2016/08/LEON-SERIO-.jpg'),
            ),
            Container(              
              child: Text('Leon',
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),),                            
             ),
             Container(              
              child: Text('MOBILE DEVELOPER',
              style: TextStyle(
                fontSize: 20.0,
                textBaseline: TextBaseline.ideographic,
                decoration: TextDecoration.underline,                
                color: Colors.white,
                 
              ),),              
             ),
            Container(
              margin:EdgeInsets.all(20.0),             
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0)
              ),
              child: TextFormField(
                keyboardType: TextInputType.number,
               decoration: InputDecoration(              
                prefixIcon:Icon(Icons.phone) ,
                contentPadding: EdgeInsets.all(20.0),  
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0)
                ) 
                           
               )  
              ), 
            ),  
             Container(
              margin:EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),         
              ),
              child: TextFormField(  
                keyboardType: TextInputType.emailAddress,            
               decoration: InputDecoration(              
                prefixIcon:Icon(Icons.mail) ,
                contentPadding: EdgeInsets.all(20.0),       
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0)
                )                    
               )  
              ),
             ),
          ],
        ),
      ) 
    );
  }
  }