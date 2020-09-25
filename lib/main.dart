import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Stack app",
      theme: ThemeData(
          primaryColor: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home: MyHome(),
    );
  }
}


class MyHome extends StatelessWidget{
  final fondo = Container(
    decoration: BoxDecoration(
      image: DecorationImage(
          image: AssetImage("assets/images/fondo.jpg"),
      fit: BoxFit.cover
      ),
    ),
  );

  final gradiente = Center(
    child: Container(
      height: 200,
      decoration: BoxDecoration(
      gradient: LinearGradient (
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [Colors.black45.withOpacity(0.2), Colors.black54.withOpacity(0.2)]
      )
    ),
    ),
  );

  final img = Container(
    padding: const EdgeInsets.symmetric(horizontal: 16),
    child: ListView(children: [

      Padding(
        padding: EdgeInsets.only(top: 30, bottom: 4),
      ),
      Image.asset(
        'assets/images/Dota2.png',
        width: 90,
        height: 90,
      ),
    ]),
      height: 160,
      decoration: BoxDecoration(
          gradient: LinearGradient (
              begin: Alignment.center,
              end: Alignment.bottomRight,
              colors: [Colors.black45.withOpacity(0.4), Colors.black45.withOpacity(0.4)]
          )
      ),
    );
  final Email = Container(
    padding: const EdgeInsets.symmetric(horizontal: 16),
    child: ListView(children: [
      Padding(
        padding: EdgeInsets.only(top: 280, bottom: 4),
      ),
      TextFormField(
        decoration: InputDecoration(
          icon: Icon(Icons.https, size: 40,
            color: Colors.white,),
          labelText: 'Email',
          labelStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
        ),
      ),
    ]),
  );
  final password = Container(
    padding: const EdgeInsets.symmetric(horizontal: 16),
    child: ListView(children: [
      Padding(
        padding: EdgeInsets.only(top: 370, bottom: 4),
      ),
      TextFormField(
        decoration: InputDecoration(
          icon: Icon(Icons.https, size: 40,
            color: Colors.white,),
          labelText: 'Password',
          labelStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(top: 10, bottom: 4),
      ),
  Container(

  height: 40.0,
  padding:  const EdgeInsets.symmetric(horizontal: 16),
  child: Material(
  borderRadius: BorderRadius.circular(20.0),
  shadowColor: Colors.orange,
  color: Colors.orange,
  elevation: 7.0,
  child: GestureDetector(
  onTap: () {},
  child: Center(
  child: Text(
  'Log In',
  style: TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
  fontSize: 20
  ),
  ),
  ),
  ),
  ),
  ),
    ]),
  );

  final mensaje = Container (
   alignment: Alignment.bottomCenter,
   margin: EdgeInsets.all(45),
   child: Text(
   "Forgot password",
   style: TextStyle(
       color: Colors.white,
       fontStyle: FontStyle.italic,
       fontSize: 20
   ),
 ),
 );

  final mensaje2 = Container (
    alignment: Alignment.bottomCenter,
    margin: EdgeInsets.all(15),
    child: Text(
      "Terms & Conditions",
      style: TextStyle(
          color: Colors.white,
          fontStyle: FontStyle.italic,
          fontSize: 20
      ),
    ),
  );


  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: Stack(
          children: <Widget>[
            fondo,
            gradiente,
            mensaje,
            mensaje2,
            Email,
            password,
            img
          ],
        ),
      );
  }
}