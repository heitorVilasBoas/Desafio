import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Padding(
        padding:  EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [


            /*Expanded(
              child: Container(
                child: Center(
                  child: Text('Favor Insira um valor abaixo'),
                ),
              ),
            ),*/


            //Caixa de inserção do valor
            TextField(
              controller: _textController,
              decoration: InputDecoration(
                hintText: 'Favor insira um valor:',
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                    onPressed: () {
                      _textController.clear();
                    },
                    icon: Icon(Icons.clear)),
              ),
            ),
            //botão para prosseguir para a proxima página
            MaterialButton(
                onPressed: () {// enviar informação para o firebase


                },
                color: Colors.black,
                child: const Text('Prosseguir', style: TextStyle(color: Colors.white)),
            )
          ],
        )
      )

    );
  }
}
