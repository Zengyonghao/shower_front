import 'package:Shower/res/StringCons.dart';
import 'package:flutter/material.dart';
import 'package:Shower/widget/AppBar.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: StringCons.appName,
      home:  Scaffold(
       appBar: MyAppBar(),
        body: Center(
          child: Text("我去尼玛的"),

        ),
      ),

    );
  }

}
