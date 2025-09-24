import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  TextEditingController controllerlogin = TextEditingController();
  TextEditingController controllersenha = TextEditingController();

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // nome
            Row(
              children: [
                Icon(Icons.account_circle, size: 15),
                Text("Nome:", style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
            Text("Tati Quebra Barraco "),
            SizedBox(height: 10),

            Container(
              decoration: BoxDecoration(
                color: Colors.pinkAccent,
                borderRadius: BorderRadius.circular(10),
              ),
              height: 250,
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
              child: Scrollbar(
                thumbVisibility: true,
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    textAlign: TextAlign.justify,
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec tempor commodo lacus...",
                  ),
                ),
              ),
            ),

            TextField(maxLength: 5),
            SizedBox(height: 10),

            TextField(
              controller: controllerlogin,
              obscureText: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Digite seu login ",
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: controllersenha,
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Digite sua senha ",
              ),
            ),
            SizedBox(height: 10),
            // ✅ Botão corrigido
            SizedBox(
              width: double.infinity,
              height: 20,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.limeAccent),
                ),
                onPressed: () {
                  // ação do botão aqui
                  print(controllerlogin.text);
                  print(controllersenha.text);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.login, size: 15),
                    SizedBox(width: 10),
                    Text("Realizar login"),
                  ],
                ),
              ),
            ),

            SizedBox(height: 20),

            Row(
              children: [
                Icon(Icons.mail, size: 15),
                Text("Email:", style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
            Text("late@TatiQuebraBarraco.edu.br "),
            SizedBox(height: 20),

            Row(
              children: [
                Icon(Icons.place, size: 15),
                Text(
                  "Endereço:",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Text("Rua Gaiola da quebrada , nº 666 "),
          ],
        ),
      ),
    );
  }
}
