
import 'package:flutter/material.dart';
import 'package:garbagereportapp/pages/pages.dart';

 class Home extends StatelessWidget{

   const Home ({Key? key}) : super(key : key);
   
    @override
    Widget build(BuildContext context) {
      return  Scaffold(
          appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 207, 122, 10),
          actions: <Widget>[
        ],
          title: Image.asset('assets/logofast.png', width: 600, height: 800,),
          elevation: 0,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              children: <Widget>[

                _Cardl(),
                _Cardno2(),
                _Cardno3(),
              ],
         )

         
        )
      ),
      
     );
    }

    Widget _Cardl() {

   return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),

      child: Container(
        child: Column(
         children: <Widget>[
             Image.asset('assets/presentacion2.png')
          ]
        ),
      )
    );
  }


Widget _Cardno2() {

   return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),

      child: Container(
        child: Column(
         children: <Widget>[
             Image.asset('assets/basureros.png')
          ]
        ),
      )
    );
  }
Widget _Cardno3() {

   return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),

      child: Container(
        child: Column(
         children: <Widget>[
             Image.asset('assets/help.png')
          ]
        ),
      )
    );
  }


 }