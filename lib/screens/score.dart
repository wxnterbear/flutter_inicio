import 'package:flutter/material.dart';
import 'package:movilesapp/screens/registro.dart';

void main() {
  runApp(IniciarSesion as Widget);
}

class IniciarSesion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'jerseyr'),
      home: Scaffold(
        body: Container(
          color: Color.fromARGB(255, 131, 37, 0),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Center(
            child: Container(
              padding: EdgeInsets.all(20.0),
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.8,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 233, 132, 39),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Trivia Code',
                          style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 131, 37, 0)),
                        ),
                        SizedBox(height: 10),
                        Image.asset('images/p1.gif'
                        ,
                        width: 480,
                        height: 300,),
                        
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 60, 
                          child: WaveText("Inicio de sesión", style: TextStyle(fontSize: 50),
                           
                            
                            
                          ),
                        ),
                        SizedBox(height: 40),
                        TextField(
                          style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 131, 37, 0)
                          ),
                          decoration: InputDecoration(
                            labelText: 'Correo',
                            border: OutlineInputBorder(),
                          ),
                        ),
                        
                        SizedBox(height: 30),
                        TextField(
                          style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 131, 37, 0)),
                          decoration: InputDecoration(
                            labelText: 'Contraseña',

                            border: OutlineInputBorder(),
                          ),
                          obscureText: true,
                        ),
                        SizedBox(height: 30),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'Iniciar Sesión',
                            style: TextStyle(color: Color.fromARGB(255, 233, 132, 39),
                            fontWeight: FontWeight.bold,
                            fontSize: 30), 
                            
                            
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 0, 0, 0), 
                          ),
                        ),
                        SizedBox(height: 30),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => RegistrarUsuario()),
                            );
                          },
                          child:
                            Text.rich(
                            TextSpan(
                              text: 'Aún no te has registrado, ',
                              style: TextStyle(fontSize: 30),
                              children: <TextSpan>[
                                TextSpan(text: 'Regístrate', style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              
                              ],
                            ),
                            
                          ),
                          
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}