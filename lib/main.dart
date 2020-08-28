import 'package:componente/src/pages/alert_page.dart';
import 'package:componente/src/pages/avatar_page.dart';
import 'package:componente/src/pages/home_pages.dart';
import 'package:componente/src/routes/routes.dart';

import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
    
      title: 'componenetes',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',   
      routes: getApplicationRoutes(),

     
      onGenerateRoute:(RouteSettings settings) {
        return MaterialPageRoute(
          builder: (BuildContext context)=>AlertPage()
          );

      },
    );
  }
}