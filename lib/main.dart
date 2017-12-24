import 'package:flutter/material.dart';

import './pages/all.dart';
import './pages/home.dart';
import './pages/portfolio.dart';


void main() {
  runApp(new BitAlarm());
}

Route<Null> _getRoute(RouteSettings settings) {
    final List<String> path = settings.name.split('/');
    if (path[0] != '') {
      return null;
    }
    return new MaterialPageRoute<Null>(
      builder: (BuildContext context) => new MyHomePage(),
    );
  }

class BitAlarm extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'BitAlarm',
      theme: new ThemeData(
        primarySwatch: Colors.deepPurple
      ),
      home: new MyHomePage(title: 'CoinWatch'),
      routes: <String, WidgetBuilder> {
        '/home'  : (BuildContext ctx) => new MyHomePage(),
        '/all'   : (BuildContext ctx) => new AllCurrenciesPage(),
        '/portfolio': (BuildContext ctx) => new PortfolioPage(),
      },
      onGenerateRoute: _getRoute,
    );
  }
}
