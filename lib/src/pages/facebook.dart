import 'package:flutter/material.dart';

class Face extends StatelessWidget {
  const Face({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('We make it better ')
      ),
      body: Center(
        child: Column (
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            FadeInImage(
              placeholder: AssetImage('assets/original.gif'),
              image: NetworkImage('https://www.enter.co/wp-content/uploads/2015/12/2.jpg'),              
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
               Column(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                children:[
                Container(
                  child: Text('Facebook 2',
                  style:TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0
                    ),
                  textAlign: TextAlign.right,
                  ),                
                ),
                Container(
                  child: Text('siliconevalley , california')              
                 ),
                 Container(
                  child: Text('calle 5555 , california street')
                 )
                ]
               ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Icon(Icons.star,color: Colors.red,size: 30.0),
                    ),
                    Container(
                      child: Text('100',
                      style:TextStyle(
                        fontSize: 20.0)
                      )
                    )
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Column(

                  children: <Widget>[
                    Container(
                      child: Icon(Icons.phone, color:(Colors.blue),size: 40.0),
                    ),
                    Container(
                      padding: EdgeInsets.only(left:30.0,right:30.0),
                      child: Text('LLAMAR',style: TextStyle(color:(Colors.blue))),
                    ),
                  ]),
                    Column(
                  children: <Widget>[
                    Container(
                      child:IconButton(icon: Icon(Icons.save, color: Colors.blue), onPressed: (){})
                    ),
                    Container(
                      padding: EdgeInsets.only(left:30.0,right:30.0),
                      child: Text('GUARDAR', style: TextStyle(color:(Colors.blue))),
                    ),
                  ]),
                    Column(
                  children: <Widget>[
                    Container(
                      child: Icon(Icons.share,color:(Colors.blue),size: 40.0)
                    ),
                    Container(                                       
                      child: Text('COMPARTIR',style: TextStyle(color:(Colors.blue))),
                    ),

                  ],
                ),
                
              ],
            ),

            Container(
              padding: EdgeInsets.all(30.0),
              child: Text('fhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhrfgcvhbjgfdsdfghjhiugyftdrsdtfghjihugyftdfyghjihugyftdfffffffffffffffffffffffffffffffffffffffffffffffffffff'),
            )
          ],
        )
      )
    
    );
  }
}