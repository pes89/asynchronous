import 'package:asynchronous/services/mockapi.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Asyncronous calls',
      home: const MyHomePage(title: 'Asyncronous calls'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool selected = true;
//utilizo estas variables para gestionar la longitud de la barra
  int ferrari = 0;
  int hyndai = 0;
  int price = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              //creo el botón
              style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(30),
                  backgroundColor: Colors.green),
              child: const Icon(
                Icons.flight,
                size: 20,
              ),
              //ejecuta la pantalla de alerta, el metodo getFerrari y cambia el selected para el contenedor animado
              onPressed: () async {
                showDialog(
                    context: context,
                    builder: (context) {
                      Future.delayed(Duration(seconds: 1), () {
                        Navigator.of(context).pop(true);
                      });
                      return AlertDialog(
                        title: Text('Obteniendo numero'),
                      );
                    });
                ferrari = await MockApi().getFerrariInteger();
                setState(() {
                  selected = !selected;
                });
              },
            ),
            AnimatedContainer(
              width: selected ? ferrari.toDouble() : ferrari.toDouble(),
              height: selected ? 10.0 : 10.0,
              color: Colors.green,
              alignment:
                  selected ? Alignment.center : AlignmentDirectional.topCenter,
              duration: const Duration(seconds: 2),
              curve: Curves.fastOutSlowIn,
            ),
            Text('$ferrari'),
            //creo el segundo botón
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(30),
                  backgroundColor: Colors.orange),
              child: const Icon(
                Icons.directions_car,
                size: 20,
              ),
              //ejecuta la pantalla de alerta, el metodo getHyndai y cambia el selected para el contenedor animado
              onPressed: () async {
                showDialog(
                    context: context,
                    builder: (context) {
                      Future.delayed(Duration(seconds: 3), () {
                        Navigator.of(context).pop(true);
                      });
                      return AlertDialog(
                        title: Text('Obteniendo numero'),
                      );
                    });
                hyndai = await MockApi().getHyundaiInteger();
                setState(() {
                  selected = !selected;
                });
              },
            ),
            AnimatedContainer(
              width: selected ? hyndai.toDouble() : hyndai.toDouble(),
              height: selected ? 10.0 : 10.0,
              color: Colors.orange,
              alignment:
                  selected ? Alignment.center : AlignmentDirectional.topCenter,
              duration: const Duration(seconds: 2),
              curve: Curves.fastOutSlowIn,
            ),
            Text('$hyndai'),
            //creo el tercer boton
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(30),
                  backgroundColor: Colors.red),
              child: const Icon(
                Icons.person,
                size: 20,
              ),
              //ejecuta la pantalla de alerta, el metodo getFisherPrice y cambia el selected para el contenedor animado
              onPressed: () async {
                showDialog(
                    context: context,
                    builder: (context) {
                      Future.delayed(Duration(seconds: 10), () {
                        Navigator.of(context).pop(true);
                      });
                      return AlertDialog(
                        title: Text('Obteniendo numero'),
                      );
                    });
                price = await MockApi().getFisherPriceInteger();
                setState(() {
                  selected = !selected;
                });
              },
            ),
            AnimatedContainer(
              width: selected ? price.toDouble() : price.toDouble(),
              height: selected ? 10.0 : 10.0,
              color: Colors.red,
              alignment:
                  selected ? Alignment.center : AlignmentDirectional.topCenter,
              duration: const Duration(seconds: 4),
              curve: Curves.fastOutSlowIn,
            ),
            Text('$price')
          ],
        ),
      ),
    );
  }
}
