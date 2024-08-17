import 'package:app_cartfy/src/pages/home/home.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget{
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Titulo MyApp",
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home)),
                Tab(icon: Icon(Icons.list)),
                Tab(icon: Icon(Icons.add_shopping_cart)),
                Tab(icon: Icon(Icons.share)),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              Home(),
              Icon(Icons.home),
              Icon(Icons.cabin),
              Icon(Icons.cabin)
            ]),
        ),
      ),
    );
    
  
  }

}
