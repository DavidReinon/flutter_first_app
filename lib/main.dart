import 'package:flutter/material.dart';
import 'features/api_screen/widgets/api_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My own lab',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 255, 144, 53)),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('My own lab'),
        ),
        body: TabBarView(
          children: [
            HomeScreen(),
            ListScreen(),
            ApiScreen(),
          ],
        ),
        bottomNavigationBar: Material(
          color: Theme.of(context).splashColor,
          child: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home_filled)),
              Tab(icon: Icon(Icons.list)),
              Tab(icon: Icon(Icons.api)),
            ],
          ),
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Soy el Widget 1'),
    );
  }
}

class ListScreen extends StatelessWidget {
  ListScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Soy el Widget 2'),
    );
  }
}
