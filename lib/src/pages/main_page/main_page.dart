import 'package:app_cartfy/src/pages/contacts/contactsFriends.dart';
import 'package:app_cartfy/src/pages/home/homeTest.dart';
import 'package:app_cartfy/src/pages/show-lists/creatingList.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Cartfy",
      theme: ThemeData.light(useMaterial3: true),
      darkTheme: ThemeData.dark(),
      home: const MainPageWithTabs(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MainPageWithTabs extends StatelessWidget {
  const MainPageWithTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
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
          title: const Text('Cartfy'),
        ),
        body: const TabBarView(
          children: [
            TelaInicialWidget(),       
            CreatingListWidget(),      
            FriendsListWidget(),       
            Placeholder(),   
          ]          
        ),
      ),
    );
  }
}
