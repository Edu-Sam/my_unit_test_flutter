import 'package:flutter/material.dart';


void main() {
  runApp(DashBoard());
}

class DashBoard extends StatelessWidget {
  DashBoard({Key key}):super(key:key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}



class HomePage extends StatelessWidget{
  HomePage({Key key,this.onPressed}):super(key:key);

   final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
      Text('Hello world!'),
        ElevatedButton(
      //      onPressed: (){},
          onPressed: ()=>onPressed?.call(),
          style: ElevatedButton.styleFrom(primary: Colors.blue),
          child: Row(
            children: [
              Icon(Icons.wb_sunny,key: Key('icon_weather'),),
              Text('Weather today')
            ],
          ),
        ),
      ],
    );
  }
}