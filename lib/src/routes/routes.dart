import 'package:componente/src/pages/alert_page.dart';
import 'package:componente/src/pages/animated_container.dart';
import 'package:componente/src/pages/avatar_page.dart';
import 'package:componente/src/pages/card_pages.dart';
import 'package:componente/src/pages/facebook.dart';
import 'package:componente/src/pages/home_pages.dart';
import 'package:componente/src/pages/list_view.dart';
import 'package:componente/src/pages/slider_page.dart';
import 'package:componente/src/pages/wasap.dart';
import 'package:flutter/material.dart';


Map<String, WidgetBuilder> getApplicationRoutes(){
return <String,WidgetBuilder>{
        '/'      : (BuildContext context) => HomePage(),
        'alert'  : (BuildContext context) => AlertPage(),
        'avatar' : (BuildContext context) => Avatar(),
        'card'   : (BuildContext context) => CardPage(),
      'animatedContainer': (BuildContext context) => AnimatedContainerPage(),
             'faces':  (BuildContext context) =>Face(),
             'wasa' : (BuildContext context) =>WasaPage(),
             'slider' : (BuildContext context) => SliderPage(),
             'list' : (BuildContext context) =>ListaPage()
};

}