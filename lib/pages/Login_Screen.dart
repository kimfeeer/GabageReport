import 'package:flutter/material.dart';
import 'package:garbagereportapp/main.dart';
import 'package:garbagereportapp/pages/home.dart';
import 'package:garbagereportapp/pages/pages.dart';


class LoginScreen extends StatefulWidget{
  static String id = 'LoginScreen';

  const LoginScreen({Key? key}) : super(key: key);

  @override 
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: 
      Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 219, 126, 4),
          title: Image.asset('assets/logofast.png', width: 600, height: 800,),
          elevation: 0,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            
            children: [
              Flexible(
                child: Image.asset('assets/logohome.png',
                height: 300.0,
              
                ),
              )
              ,
              const SizedBox(height: 15.0,),
              _userTextField(),
              const SizedBox(height: 15,),
              _passwordTextField(),
              const SizedBox(height: 20.0,),
              _bottonLogin(),
              _bottonRegister()
            ],
          )
        ),
      )
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

  Widget _passwordTextField() {

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

  Widget _bottonLogin() {
    return StreamBuilder(
      builder: (BuildContext context, AsyncSnapshot snapshot){
        return RaisedButton(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
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
        color: Color.fromARGB(255, 194, 97, 7),
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const GarbageReportapp(),));
        }
      );
      }
    );
  }

  Widget _bottonRegister() {
      return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot){
          return RaisedButton(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
              child: const Text('Registrarse',
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
          color: Color.fromARGB(255, 164, 167, 5),
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Registro(),));
          }
        );
        }
      );
    }


}

