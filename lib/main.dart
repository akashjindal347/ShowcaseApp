import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}


class _MyAppState extends State<MyApp>{
  List<String> _products=[];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Just Pictures!'),
        ),
      


      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
           _products.add('abs'); 
          });
        },
        
      ),

      body: ListView(
        children: _products.map((element)=>
        Card(
          child: Column(
            children: <Widget>[
              Image.asset('assets/abc.jpg'),
              
            ],
          ),
        )
        ).toList(),
      ),
      ),
    );
  }


}