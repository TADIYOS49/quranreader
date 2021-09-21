import 'package:flutter/material.dart';

class Audio extends StatefulWidget {
  const Audio({Key key}) : super(key: key);

  @override
  _AudioState createState() => _AudioState();
}

class _AudioState extends State<Audio> {
  final items = [];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: TabBar(tabs: [
              Tab(
                icon: Text(
                  "Suras",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Tab(
                  icon: Text(
                "Ajzaa",
                style: TextStyle(fontSize: 20),
              )),
            ]),
          ),
          body: TabBarView(children: [
            Center(
              child: Text("Suras Audio!!"),
            ),
            Center(
              child: Text("Ajzaa Audio!!"),
            )
          ]),
        ));
    // return ListView.builder(
    //     itemCount: items.length,
    //     itemBuilder: (context, index) {
    //       return Card(
    //         child: ListTile(
    //           title: Text(items[index]),
    //         ),
    //       );
    //     });
  }
}
