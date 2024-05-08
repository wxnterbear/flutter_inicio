import 'package:flutter/material.dart';

void main() {
  runApp(RegistrarUsuario as Widget);
}

class RegistrarUsuario extends StatelessWidget {
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
                        SizedBox(height: 30),
                        Image.asset('images/p1.GIF'
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
                          child: WaveText("Registro de usuario", style: TextStyle(fontSize: 50),
                           
                            
                            
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
                            'Registrar usuario',
                            style: TextStyle(color: Color.fromARGB(255, 233, 132, 39),
                            fontWeight: FontWeight.bold,
                            fontSize: 30), 
                            
                            
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 0, 0, 0), 
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

class WaveText extends StatefulWidget {
  final String text;
  final TextStyle style;

  WaveText(this.text, {required this.style});

  @override
  _WaveTextState createState() => _WaveTextState();
}

class _WaveTextState extends State<WaveText> with SingleTickerProviderStateMixin {
  late Animation<double> _animation;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    );

    _animation = Tween(begin: 0.0, end: widget.text.length.toDouble()).animate(_controller)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _controller.reverse();
        } else if (status == AnimationStatus.dismissed) {
          _controller.forward();
        }
      });

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(widget.text.length, (index) {
        return AnimatedDefaultTextStyle(
          style: TextStyle(
            fontFamily: 'jerseyr', 
            fontSize: (index == _animation.value.floor() % widget.text.length) ? 60 : 50, 
            color: Color.fromARGB(255, 131, 37, 0),
            fontWeight: FontWeight.bold,
          ),
          duration: Duration(milliseconds: 200),
          child: Text(widget.text[index]),
        );
      }),
    );
  }
}