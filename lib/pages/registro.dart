// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:garbagereportapp/pages/pageslogin.dart';

class Registro extends StatefulWidget{
  static String id = 'RegistroScreen';

  const Registro({Key? key}) : super(key: key);

  @override 
  _RegistroScreenState createState() => _RegistroScreenState();
}

class _RegistroScreenState extends State<Registro> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:   
      Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 216, 119, 8),
          title: Image.asset('assets/logofast.png', width: 600, height: 800,),
          elevation: 0,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView(
              
              children: [
                Flexible(
                  child: Image.asset('assets/logoregistro.png',
                  height: 300.0,
                
                  ),
                ),
                
                _userTextField(),
                const SizedBox(height: 15,),
                _contraTextField(),
                const SizedBox(height: 20.0,),
                _nombreTextField(),
                const SizedBox(height: 20.0,),
                _apellidoTextField(),
                const SizedBox(height: 20.0,),
                     
                _bottonRegistro(),
              ],
            ),
        )

        ),
      );
  }

  Widget _userTextField() {
    return StreamBuilder(
      builder: (BuildContext context, AsyncSnapshot snapshot){
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: const TextField(

            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(

             
              
              labelText: 'Correo Electronico'
            ),

          ),
        );
      }
    );
  }


  Widget _contraTextField() {

    return StreamBuilder(
      builder: (BuildContext context, AsyncSnapshot snapshot){
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: const TextField(
            
            keyboardType: TextInputType.visiblePassword,
            decoration: InputDecoration(
              
              
              labelText: 'Contraseña'
            ),
          ),
        );
      }
    );
  }


    Widget _nombreTextField() {
      return StreamBuilder(
      builder: (BuildContext context, AsyncSnapshot snapshot){
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: const TextField(
            
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              
              
              labelText: 'Nombre (s)'
            ),
          ),
        );
      }
    );
  }

  Widget _apellidoTextField() {
      return StreamBuilder(
      builder: (BuildContext context, AsyncSnapshot snapshot){
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: const TextField(
            
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              
              
              labelText: 'Apellidos'
            ),
          ),
        );
      }
    );
  }


Widget _bottonRegistro() {
    return StreamBuilder(
      builder: (BuildContext context, AsyncSnapshot snapshot){
        return RaisedButton(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 80.0, vertical: 15.0),
            child: const Text('Iniciar Sesion',
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
        color: Color.fromARGB(255, 201, 99, 4),
        splashColor: Color.fromARGB(255, 196, 185, 38),
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const LoginScreen(),));
        }
      );
      }
    );
  }



  

}

  
  
