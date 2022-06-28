import 'package:flutter/material.dart';
import 'package:blackpage/components/AppDrawer.dart';
import 'package:blackpage/pages/Home.dart';
// import 'package:blackpage/components/AppDrawer.dart'

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    AppBar appBar = AppBar(
      title: Text('Blackpage'),
      leading: Builder(
        builder: (BuildContext appBarContext) {
          return IconButton(
              onPressed: () {
                AppDrawer.of(appBarContext).toggle();
              },
              icon: Icon(Icons.menu)
          );
        },
      ),
    );
    return MaterialApp(
      title: CustomDrawer.title,
      theme: ThemeData(
        primarySwatch: Colors.grey,
        fontFamily: "Poppins",
      ),
      home: AppDrawer(
        child: Home(appBar: appBar),
      ),
    );
  }
}