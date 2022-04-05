import 'package:flutter/material.dart';
import 'package:garbagereportapp/pages/pages.dart';

 class PoiPage extends StatelessWidget{

   const PoiPage ({Key? key}) : super(key : key);
   
    @override
    Widget build(BuildContext context) {
      return  Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 221, 129, 9),
          actions: <Widget>[
        ],
          title: const Text('Consultar Puntos de Interés'),
          elevation: 0,
        centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                  _POI(),
                  _POI(),
                  _POI(),
                  _POI(),
              ]
            ),
          )
        )
      );
    }

 Widget _POI() {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    margin: const EdgeInsets.all(15),

    elevation: 10,
    child: Column(
      children: <Widget>[
        const ListTile(
          contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
          title: Text('Punto de Interés'),
          subtitle: Text('Calle 19B #307 por 12 y 14 colonia San Jose Vergel'),leading: 
          Icon(Icons.zoom_in_map, color: Color.fromARGB(255, 247, 149, 2) )),
      ],
    ),
  );
}
}