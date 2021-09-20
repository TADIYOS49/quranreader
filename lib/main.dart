import 'package:animation/widgets/list_of_ajzaa.dart';
import 'package:animation/widgets/list_of_suras.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Quran mp3 - اقرا واستمع'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void printer() {
    print("menu displayed");
  }

  void _onNavigationTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const List<Widget> _pages = <Widget>[
    Suras(),
    Ajzaa(),
  ];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          InkWell(
            child: Icon(Icons.menu),
            onTap: printer,
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.library_books), label: "Suras"),
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: "Ajzaa"),
        ],
        currentIndex: _selectedIndex,
        onTap: _onNavigationTap,
      ),
      body: Center(child: _pages.elementAt(_selectedIndex)),
    );
  }
}
