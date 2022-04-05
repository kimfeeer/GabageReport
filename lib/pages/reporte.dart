import 'package:flutter/material.dart';
import 'package:garbagereportapp/pages/pages.dart';

 class Reporte extends StatelessWidget{

   const Reporte({Key? key}) : super(key : key);
   
    @override
    Widget build(BuildContext context) {
      return  SafeArea(
      child: 
      Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 228, 139, 7),
          actions: <Widget>[
        ],
          title: Image.asset('assets/crearreporte2.png', width: 200, height: 400,),
          elevation: 0,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView(
              
              children: [
                Flexible(
                  child: Image.asset('assets/nobasura.png',
                  height: 300.0,
                  ),
                ),
                
                _desclugarTextField(),
                const SizedBox(height: 20.0,),
                _desTextField(),
                const SizedBox(height: 15,),
                _desfechaTextField(),
                const SizedBox(height: 20.0,),
                _descoloniaTextField(),
                const SizedBox(height: 20.0,),


                _bottonCrear(),
              ],
            ),
        )

        ),
      );
  }

  Widget _desTextField() {
    return StreamBuilder(
      builder: (BuildContext context, AsyncSnapshot snapshot){
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: const TextField(

            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(

              
             
              labelText: 'Descripción de la denuncia'
            ),

          ),
        );
      }
    );
  }

  

  Widget _desclugarTextField() {
      return StreamBuilder(
      builder: (BuildContext context, AsyncSnapshot snapshot){
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: const TextField(
            
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              labelText: 'Motivo de la Denuncia'
            ),
          ),
        );
      }
    );
  }


  Widget _desfechaTextField() {
      return StreamBuilder(
      builder: (BuildContext context, AsyncSnapshot snapshot){
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: const TextField(
            
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
            
              
              labelText: 'Fecha de la denuncia'
            ),
          ),
        );
      }
    );
  }
  Widget _descoloniaTextField() {
      return StreamBuilder(
      builder: (BuildContext context, AsyncSnapshot snapshot){
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: const TextField(
            
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
            
              
              labelText: 'Colonia'
            ),
          ),
        );
      }
    );
  }



  Widget _bottonCrear() {
    return StreamBuilder(
      builder: (BuildContext context, AsyncSnapshot snapshot){
        return RaisedButton(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 80.0, vertical: 15.0),
            child: const Text('Crear reporte',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        ),
        elevation: 10.0,
        color: Color.fromARGB(255, 155, 86, 22),
        splashColor: Color.fromARGB(255, 148, 167, 43),
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const LoginScreen(),));
        }
      );
      }
    );
  }


  
 
}

  
  
