import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

    );
  }
}
class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;
  List<String> Actividades ={
    'desayunar',
    'lavarme los dientes',
    'recojer trastes de la mesa',
    'barrer en la cosina',
    'limpiar el cuarto'
  } as List<String>;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text('Actividades en casa')),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Cesar Uriel Cervantes Sustaita'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Actividades no Realizadas'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: <Actividad>[

        ],
      )
    );
  }
}


class Actividad extends StatelessWidget{
  String actividad;
  Actividad(this.actividad);


  @override
  Widget build(BuildContext context) {
    return Card(
        child: Text(actividad)
    );

  }

}